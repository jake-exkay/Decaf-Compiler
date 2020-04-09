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

        def visitProgram(self, ctx:DecafParser.ProgramContext):
            self.st.enterScope()
            visit = self.visitChildren(ctx)
            self.st.exitScope()
            return visit

        def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
            visit = self.visitChildren(ctx)
            return visit

        def visitBlock(self, ctx:DecafParser.BlockContext):
            visit = self.visitChildren(ctx)
            return visit

        def visitExpr(self, ctx:DecafParser.ExprContext):
            if ctx.VAR():
                var_name = ctx.VAR().getText()
                var_symbol = self.st.lookup(var_name)
                if var_symbol == None:
                    print('Error: Variable', var_name, 'has not been declared. Found on line', ctx.start.line)
            visit = self.visitChildren(ctx)
            return visit

        def visitVar_decl(self, ctx:DecafParser.Var_declContext):
            var_name = ctx.VAR().getText()
            var_symbol = self.st.probe(var_name)
            if var_symbol == None:
                var_symbol = SymbolTable.VarSymbol(id=var_name, type='int', line=ctx.start.line, size=8, mem=SymbolTable.STACK)
                self.st.addSymbol(var_symbol)
            else:
                print('Error:', var_symbol.id + ', declared on line', ctx.start.line, 'has already been declared on line', var_symbol.line)

            visit = self.visitChildren(ctx)
            return visit

source = 'testdata/semantics/illegal-02.dcf'
filein = open(source, 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

stream = ant.CommonTokenStream(lexer)

parser = DecafParser(stream)
tree = parser.program()

codegen_visitor = DecafCodeGenVisitor()
codegen_visitor.visit(tree)
