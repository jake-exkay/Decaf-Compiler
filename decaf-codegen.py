import os
import antlr4 as ant
from SymbolTable import STACK, SymbolTable, VarSymbol, MethodSymbol

os.system("java -Xmx500M -cp antlr-4.7.2-complete.jar org.antlr.v4.Tool -Dlanguage=Python3 Decaf.g4 -visitor")

from DecafLexer import DecafLexer
from DecafParser import DecafParser
from DecafVisitor import DecafVisitor
class DecafCodeGenVisitor(DecafVisitor):

    IF_LABEL_COUNT = 0
    CALLOUT_COUNT = 0

    def __init__(self):
        super().__init__()
        self.st = SymbolTable()
        self.head = '.data\n'
        self.body = '.global main\n'

    def visitProgram(self, ctx:DecafParser.ProgramContext):
        print("[DEBUG] Visiting: Program")
        self.st.enterScope()
        self.visitChildren(ctx)
        method_symbol = self.st.lookup('main')
        params = []
        if method_symbol == None:
            print("Error: No main method has been declared.")
        else:
            if len(params) != 0:
                print("Error: The main method cannot contain paramaters.")
        self.body += 'ret\n'
        self.st.exitScope()

    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        print("[DEBUG] Visiting: Method Declaration")
        method_name = ctx.ID(0).getText()
        return_type = ctx.TYPE(0)
        line_number = ctx.start.line

        if self.st.probe(method_name) != None:
            print("Error: The method", method_name, "on line", line_number, "was already declared!")
        else:
            if method_name != 'main':
                self.body += method_name
                self.body += ':\n'

        params = []

        for param in range(len(ctx.ID())):
            params.append(ctx.ID(param).getText())

        params.pop(0)
        print(params)

        method_symbol = MethodSymbol(id=method_name, type=return_type, line=line_number, params=params)
        self.st.addSymbol(method_symbol)

        visit = self.visitChildren(ctx)
        return visit

    def visitBlock(self, ctx:DecafParser.BlockContext):
        print("[DEBUG] Visiting: Block")
        visit = self.visitChildren(ctx)
        return visit

    def visitExpr(self, ctx:DecafParser.ExprContext):
        print("[DEBUG] Visiting: Expression")
        if ctx.location():
            print("[DEBUG] Expression is a variable.")
            var_name = ctx.location().getText()
            var_symbol = self.st.lookup(var_name)
            if var_symbol == None:
                print('Error: Variable', var_name, 'has not been declared. Found on line', ctx.start.line)
            else:
                var_addr = var_symbol.getAddr()
                self.body += '\tmovq -' + str(var_addr[0]) + '(%rsp), %rax\n'
        elif ctx.literal():
            print("[DEBUG] Expression is a number.")
            number = ctx.literal().getText()
            self.body += '\tmovq $' + number + ', %rax\n'
        elif len(ctx.expr()) > 1:
            print("[DEBUG] Expression length more than 1.")
            # Visit the first expression.
            self.visit(ctx.expr(0))

            # Move stack pointer 1 place and save value of first expression.
            self.st.stack_pointer[-1] += 8
            self.body += '\tmovq %rax, ' + str(-self.st.stack_pointer[-1]) + '(%rsp)\n'

            # Visit the second expression.
            self.visit(ctx.expr(1))
            self.body += '\tmovq ' + str(-self.st.stack_pointer[-1]) + '(%rsp), %r10\n'
            self.st.stack_pointer[-1] -= 8
            self.body += '\tmovq %rax, %r11\n'

            if ctx.BIN_OP():
                self.body += '\taddq %r10, %r11\n'

            self.body += '\tmovq %r11, %rax\n'

    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        print("[DEBUG] Visiting: Variable Declaration")
        for i in range(len(ctx.ID())):
            var_name = ctx.ID(i).getText()
            var_symbol = self.st.probe(var_name)
            if var_symbol == None:
                var_symbol = VarSymbol(id=var_name, type='int', line=ctx.start.line, size=8, mem=self.st.stack_pointer)
                self.st.addSymbol(var_symbol)
                var_addr = var_symbol.getAddr()
                print("[DEBUG] Variable ", var_name, " added.")
                self.body += '\tmovq %rax, -' + str(var_addr[0]) + '(%rsp)\n'
            else:
                print('Error:', var_symbol.id + ', declared on line', ctx.start.line, 'has already been declared on line', var_symbol.line)

        visit = self.visitChildren(ctx)
        return visit

    def visitStatement(self, ctx:DecafParser.StatementContext):
        print("[DEBUG] Visiting: Statement")
        if ctx.CONTINUE() != None:
            print("[DEBUG] Continue statement found")
            self.body += '\tjmp main\n'
        if ctx.BREAK() != None:
            print("[DEBUG] Break statement found")
            self.body += '\tjmp main\n'
        if ctx.IF():
            if_label = 'label'+str(self.IF_LABEL_COUNT)
            self.body += '\tcmp %r11 %r10\n'
            self.body += '\tjl '+if_label+'l\n'
            self.body += '\tje '+if_label+'e\n'
            self.body += '\tjg '+if_label+'g\n'
            self.body += '\tret\n'
            self.body += if_label+':\n'
            self.IF_LABEL_COUNT = self.IF_LABEL_COUNT + 1
            ctx.expr()
        if ctx.ASSIGN_OP():
            self.expr()

        visit = self.visitChildren(ctx)
        return visit

    def visitField_decl(self, ctx:DecafParser.Field_declContext):
        print("[DEBUG] Visiting: Field Decl")
        visit = self.visitChildren(ctx)
        return visit

    def visitMethod_call(self, ctx:DecafParser.Method_callContext):
        print("[DEBUG] Visiting: Method Call")
        method_name = ctx.method_name()
        method_symbol = self.st.lookup(method_name)
        if method_symbol == None:
            print("Error: Call to a function that does not exist:", method_name)
        else:
            self.body += '\tjmp '+method_name+'\n'
        visit = self.visitChildren(ctx)
        return visit

    def visitCallout_arg(self, ctx:DecafParser.Callout_argContext):
        print("[DEBUG] Visiting: Callout Arg")
        self.head += 'callout'+str(self.CALLOUT_COUNT)+': .asciz '+str(ctx.STRING_LITERAL())+'\n'
        self.CALLOUT_COUNT = self.CALLOUT_COUNT + 1

        visit = self.visitChildren(ctx)
        return visit

source = 'testdata/codegen/13-ifs'
filein = open(source + '.dcf', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

#create a token stream from the lexer
stream = ant.CommonTokenStream(lexer)

#create a new parser with the token stream as input
parser = DecafParser(stream)
tree = parser.program()

#create a new calc visitor
codegen_visitor = DecafCodeGenVisitor()
codegen_visitor.visit(tree)

#output code
code = codegen_visitor.head + codegen_visitor.body
print("\n\n-- ASSEMBLY OUTPUT --\n")
print(code)

fileout = open(source + '.s', 'w')
fileout.write(code)
fileout.close()
