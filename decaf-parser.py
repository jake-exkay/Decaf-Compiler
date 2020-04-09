import os
import antlr4 as ant
import SymbolTable

os.system("java -Xmx500M -cp antlr-4.7.2-complete.jar org.antlr.v4.Tool -Dlanguage=Python3 Decaf.g4 -visitor")

from DecafLexer import DecafLexer
from DecafParser import DecafParser
from DecafVisitor import DecafVisitor

class DecafTreeVisitor(DecafVisitor):
    def __init__(self):
        super().__init__()
        self.text = ''

    def printNode(self, ctx):
        self.text = self.text + '{\"name\": \"' + parser.ruleNames[ctx.getRuleIndex()] + '\",' + '\"value\":2,' + '\"children\":['
        self.visitChildren(ctx)
        self.text = self.text + ']},'

    def visitTerminal(self, ctx):
        self.text = self.text + '{\"name\": \"' + ctx.getText().replace('\\', '\\\\').replace('\"', '\\\"') + '\"},'

    def visitProgram(self, ctx:DecafParser.ProgramContext):
        self.printNode(ctx)

    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        self.printNode(ctx)

    def visitBlock(self, ctx:DecafParser.BlockContext):
        self.printNode(ctx)

    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        self.printNode(ctx)

filein = open('testdata/semantics/illegal-01.dcf', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

stream = ant.CommonTokenStream(lexer)
parser = DecafParser(stream)
tree = parser.program()

visitor = DecafTreeVisitor()
visitor.visit(tree)
print(visitor.text)

## Legal: 4, 6, 7, 8, 11, 12, 13, 14, 15, 16
## Illegal:
