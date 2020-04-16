import os
import antlr4 as ant
import SymbolTable

os.system("java -Xmx500M -cp antlr-4.7.2-complete.jar org.antlr.v4.Tool -Dlanguage=Python3 Decaf.g4 -visitor")

from DecafLexer import DecafLexer
from DecafParser import DecafParser
from DecafVisitor import DecafVisitor

class DecafCodeGenVisitor(DecafVisitor):
    def __init__(self):
        super().__init__()
        self.st = SymbolTable.SymbolTable()
        self.head = '.data\n'
        self.body = '.global main\n'

    def visitProgram(self, ctx:DecafParser.ProgramContext):
        print("[DEBUG] Visiting: Program")
        self.st.enterScope()
        self.body += 'main:\n'
        visit = self.visitChildren(ctx)
        self.body += 'ret\n'
        self.st.exitScope()
        return visit

    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        print("[DEBUG] Visiting: Method Declaration")
        visit = self.visitChildren(ctx)
        return visit

    def visitBlock(self, ctx:DecafParser.BlockContext):
        print("[DEBUG] Visiting: Block")
        visit = self.visitChildren(ctx)
        return visit

    def visitExpr(self, ctx:DecafParser.ExprContext):
        print("[DEBUG] Visiting: Expression")
        if ctx.VAR():
            var_name = ctx.VAR().getText()
            var_symbol = self.st.lookup(var_name)
            if var_symbol == None:
                print('Error: Variable', var_name, 'has not been declared. Found on line', ctx.start.line)
            else:
                var_addr = var_symbol.getAddr()
                self.body += 'movq ' + str(var_addr) + '(%rsp), %rax\n'
        elif ctx.NUMBER():
            number = ctx.NUMBER().getText()
            self.body += 'movq $' + number + ', %rax\n'
        elif len(ctx.expr()) > 1:
            # Visit the first expression.
            self.visit(ctx.expr(0))

            # Move stack pointer 1 place and save value of first expression.
            self.st.stack_pointer[-1] += 8
            self.body += 'movq %rax, ' + str(-self.st.stack_pointer[-1]) + '(%rsp)\n'

            # Visit the second expression.
            self.visit(ctx.expr(1))
            self.body += 'movq ' + str(-self.st.stack_pointer[-1]) + '(%rsp), %r10\n'
            self.st.stack_pointer[-1] -= 8
            self.body += 'movq %rax, %r11\n'

            if ctx.PLUS():
                self.body += 'addq %r10, %r11\n'
            if ctx.MULTIPLY():
                self.body += 'imul %r10, %r11\n'
            if ctx.MINUS():
                self.body += ''
            if ctx.DIVIDE():
                self.body += ''

            self.body += 'movq %r11, %rax\n'

    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        print("[DEBUG] Visiting: Variable Declaration")
        var_name = ctx.VAR().getText()
        var_symbol = self.st.probe(var_name)
        if var_symbol == None:
            var_symbol = SymbolTable.VarSymbol(id=var_name, type='int', line=ctx.start.line, size=8, mem=SymbolTable.STACK)
            self.st.addSymbol(var_symbol)
            self.visit(ctx.expr())
            var_addr = var_symbol.getAddr()
            self.body += 'movq %rax, ' + str(var_addr) + '(%rsp)\n'
        else:
            print('Error:', var_symbol.id + ', declared on line', ctx.start.line, 'has already been declared on line', var_symbol.line)

        visit = self.visitChildren(ctx)
        return visit

source = 'testdata/semantics/illegal-05.dcf'
filein = open(source, 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

stream = ant.CommonTokenStream(lexer)

parser = DecafParser(stream)
tree = parser.program()

codegen_visitor = DecafCodeGenVisitor()
codegen_visitor.visit(tree)

code = codegen_visitor.head + codegen_visitor.body
fileout = open(source + '.s', 'w')
fileout.write(code)
fileout.close()

os.system('gcc -static ' + source + '.s ; ./a.out ; echo $?')
