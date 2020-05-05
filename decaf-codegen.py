import os
import antlr4 as ant
from SymbolTable import STACK, SymbolTable, VarSymbol, MethodSymbol

os.system("java -Xmx500M -cp antlr-4.7.2-complete.jar org.antlr.v4.Tool -Dlanguage=Python3 Decaf.g4 -visitor")

from DecafLexer import DecafLexer
from DecafParser import DecafParser
from DecafVisitor import DecafVisitor

# Visitor class for accessing the parsed data.
class DecafCodeGenVisitor(DecafVisitor):

    # Global variables, used to keep track of how many if statements, callouts and loops exist in the code.
    IF_LABEL_COUNT = 1
    CALLOUT_COUNT = 1
    LOOP_COUNT = 1

    # Constructor sets up the header of the assembly code.
    def __init__(self):
        super().__init__()
        self.st = SymbolTable()
        self.head = '.data\n'
        self.body = '.global main\n'

    # Visits the program node, ensures there is a main method.
    def visitProgram(self, ctx:DecafParser.ProgramContext):
        self.st.enterScope()
        self.visitChildren(ctx)
        method_symbol = self.st.lookup('main')
        params = []

        # Checks if main method has been declared and if it contains paramaters.
        if method_symbol == None:
            print('[Error]: No main method has been declared.')
        else:
            if len(params) != 0:
                print('[Error]: The main method cannot contain paramaters.')
        self.body += 'ret\n'
        self.st.exitScope()

    # Visits the method declaration node, checks if method is already declared and manages parameters.
    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        method_name = ctx.ID(0).getText()
        return_type = ctx.TYPE(0)
        line_number = ctx.start.line

        # Checks if the method has already been declared.
        if self.st.probe(method_name) != None:
            print('[Error]: The method ' + method_name + ' on line: ' + line_number + 'was already declared!')
        else:
            self.body += method_name
            self.body += ':\n'

        params = []

        # Loops through paramaters and creates a var symbol for them and appends them to a list.
        if len(params) > 1:
            for param in range(len(ctx.ID())):
                param_name = ctx.ID(param).getText()
                params.append(param_name)
                var_symbol = self.st.probe(param_name)
                if var_symbol == None:
                    var_symbol = VarSymbol(id=param_name, type='int', line=ctx.start.line, size=8, mem=self.st.stack_pointer)
                    self.st.addSymbol(var_symbol)
                    var_addr = var_symbol.getAddr()
                    self.body += '\tmovq %rax, -' + str(var_addr[0]) + '(%rsp)\n'

            params.pop(0)

        method_symbol = MethodSymbol(id=method_name, type=return_type, line=line_number, params=params)
        self.st.addSymbol(method_symbol)

        visit = self.visitChildren(ctx)
        return visit

    # Visits block node, enters a new scope inside the block.
    def visitBlock(self, ctx:DecafParser.BlockContext):
        self.st.enterScope()
        visit = self.visitChildren(ctx)
        self.st.exitScope()
        return visit

    # Visits expression node, handles variable assignment.
    def visitExpr(self, ctx:DecafParser.ExprContext):

        # Expression is a variable.
        if ctx.location():
            var_name = ctx.location().getText()
            var_symbol = self.st.lookup(var_name)
            if "[" in var_name:
                split_var = var_name.split('[', 1)[0]
                var_symbol = self.st.lookup(split_var)
            if var_symbol == None:
                print('[Error]: Variable', var_name, 'has not been declared. Found on line', ctx.start.line)
            else:
                var_addr = var_symbol.getAddr()
                self.body += '\tmovq -' + str(var_addr[0]) + '(%rsp), %rax\n'

        # Expression is a literal (number or string/char)
        elif ctx.literal():
            number = ctx.literal().getText()
            if number == 'false':
                number = '0'
            if number == 'true':
                number = '1'
            self.body += '\tmovq $' + number + ', %rax\n'

        # Expression length is more than 1 (more expressions present such as an operation)
        elif len(ctx.expr()) > 1:
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

            # If a binary operator is present, check the operator and add appropriate code.
            if ctx.BIN_OP():
                if str(ctx.BIN_OP()) == '+':
                    self.body += '\taddq %r10, %r11\n'
                if str(ctx.BIN_OP()) == '*':
                    self.body += '\timul %r10, %r11\n'
                if str(ctx.BIN_OP()) == '-':
                    self.body += '\tsubq %r10, %r11\n'
                if str(ctx.BIN_OP()) == '/':
                    self.body += '\tmovq $0, rdx\n'
                    self.body += '\tmovq %r11, rbx\n'
                    self.body += '\tmovq %r10, rax\n'
                    self.body += '\tidiv %rbx\n'

            self.body += '\tmovq %r11, %rax\n'

    # Visits the variable declaration node, handles storage of variables and name checking.
    def visitVar_decl(self, ctx:DecafParser.Var_declContext):

        # Loops through all variables (to evaluate int x, y, z for example.)
        for i in range(len(ctx.ID())):
            var_name = ctx.ID(i).getText()
            var_symbol = self.st.probe(var_name)
            if "[" in var_name:
                array_var_name = ctx.ID(i).getText()
                split_var = array_var_name.split('[', 1)[0]
            else:
                if var_symbol == None:
                    var_symbol = VarSymbol(id=var_name, type='int', line=ctx.start.line, size=8, mem=self.st.stack_pointer)
                    self.st.addSymbol(var_symbol)
                    var_addr = var_symbol.getAddr()
                    self.body += '\tmovq %rax, -' + str(var_addr[0]) + '(%rsp)\n'
                else:
                    print('[Error]:', var_symbol.id + ', declared on line', ctx.start.line, 'has already been declared on line', var_symbol.line)

        visit = self.visitChildren(ctx)
        return visit

    # Visit the statement node, handles constructs such as IF statements and FOR loops.
    def visitStatement(self, ctx:DecafParser.StatementContext):
        if ctx.CONTINUE() != None:
            self.body += '\tjmp main\n'
        if ctx.BREAK() != None:
            self.body += '\tjmp main\n'
        if ctx.IF():
            self.st.enterScope()
            if_label = 'if-label-'+str(self.IF_LABEL_COUNT)
            self.body += '\tcmp %r11 %r10\n'
            self.body += '\tjl '+if_label+'l\n'
            self.body += '\tje '+if_label+'e\n'
            self.body += '\tjg '+if_label+'g\n'
            self.body += '\tret\n'
            self.body += if_label+':\n'
            self.IF_LABEL_COUNT = self.IF_LABEL_COUNT + 1
            ctx.expr()
            self.st.exitScope()
        if ctx.RETURN():
            if ctx.expr():
                return_value = str(ctx.expr(0).getText())
                self.body += '\tmovq $'+return_value+', %rax\n'
                self.body += '\tret\n'
            else:
                self.body += '\tret\n'
        if ctx.FOR():
            self.st.enterScope()
            start_value = ctx.expr(0)
            end_value = ctx.expr(1)
            self.body += '\tmovq $1, %rbx\n'
            self.body += '\tjmp begin-for-'+str(self.LOOP_COUNT)+'\n'
            self.body += 'begin-for-'+str(self.LOOP_COUNT)+':\n'
            self.body += '\tcmp $'+str(end_value)+ ', %rbx\n'
            self.body += '\tjge end-for-'+str(self.LOOP_COUNT)+'\n'
            visit = self.visitChildren(ctx)
            self.body += '\taddq $1, %rbx\n'
            self.body += '\tjmp begin-for-'+str(self.LOOP_COUNT)+'\n'
            self.body += 'end-for-'+str(self.LOOP_COUNT)+':\n'
            self.body += '\tret\n'

            self.LOOP_COUNT = self.LOOP_COUNT + 1
            self.st.exitScope()

        visit = self.visitChildren(ctx)
        return visit

    # Visit field declaration node, handles assignment of arrays.
    def visitField_decl(self, ctx:DecafParser.Field_declContext):
        for i in range(len(ctx.field_name())):
            var_name = ctx.field_name(i).getText()
            var_symbol = self.st.probe(var_name)

            # Declaration is an array.
            if "[" in var_name:
                array_var_name = ctx.field_name(i).getText()
                split_var = array_var_name.split('[', 1)[0]
                if var_symbol == None:
                    var_symbol = VarSymbol(id=split_var, type='int', line=ctx.start.line, size=8, mem=self.st.stack_pointer)
                    self.st.addSymbol(var_symbol)
                    var_addr = var_symbol.getAddr()
                    self.body += '\tmovq %rax, -' + str(var_addr[0]) + '(%rsp)\n'
            else:
                if var_symbol == None:
                    var_symbol = VarSymbol(id=var_name, type='int', line=ctx.start.line, size=8, mem=self.st.stack_pointer)
                    self.st.addSymbol(var_symbol)
                    var_addr = var_symbol.getAddr()
                    self.body += '\tmovq %rax, -' + str(var_addr[0]) + '(%rsp)\n'
                else:
                    print('[Error]:', var_symbol.id + ', declared on line', ctx.start.line, 'has already been declared on line', var_symbol.line)
        visit = self.visitChildren(ctx)
        return visit

    # Visit method call node, checks if method exists.
    def visitMethod_call(self, ctx:DecafParser.Method_callContext):
        method_name = ctx.method_name()
        method_symbol = self.st.lookup(method_name)
        if not ctx.callout_arg():
            if method_symbol == None:
                print('[Error]: Call to a function that does not exist: ' + str(method_name) + ' on line: ' + str(ctx.start.line))
            else:
                self.body += '\tjmp '+method_name+'\n'
        visit = self.visitChildren(ctx)
        return visit

    # Visits callout arg node, handles adding strings to the head and printing text.
    def visitCallout_arg(self, ctx:DecafParser.Callout_argContext):
        self.head += 'string'+str(self.CALLOUT_COUNT)+': .asciz '+str(ctx.STRING_LITERAL())+'\n'
        self.body += '\tmovq $'+str(self.CALLOUT_COUNT)+', %rdi\n'
        self.body += '\tsubq $8, %rsp\n'
        self.body += '\tcall printf\n'
        self.body += '\taddq $8, %rsp\n'
        self.CALLOUT_COUNT = self.CALLOUT_COUNT + 1

        visit = self.visitChildren(ctx)
        return visit

# Variable to set testing file name.
source = 'testdata/codegen/00-empty'
filein = open(source + '.dcf', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

stream = ant.CommonTokenStream(lexer)
parser = DecafParser(stream)
tree = parser.program()
codegen_visitor = DecafCodeGenVisitor()
codegen_visitor.visit(tree)

# Code outputs and creates .s file.
code = codegen_visitor.head + codegen_visitor.body
print("\n\n-- ASSEMBLY OUTPUT --\n")
print(code)

fileout = open(source + '.s', 'w')
fileout.write(code)
fileout.close()
