import os
import antlr4 as ant

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

    def visitField_name(self, ctx:DecafParser.Field_nameContext):
        self.printNode(ctx)

    def visitField_decl(self, ctx:DecafParser.Field_declContext):
        self.printNode(ctx)

    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        self.printNode(ctx)

    def visitBlock(self, ctx:DecafParser.BlockContext):
        self.printNode(ctx)

    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        self.printNode(ctx)

    def visitStatement(self, ctx:DecafParser.StatementContext):
        self.printNode(ctx)

    def visitMethod_call(self, ctx:DecafParser.Method_callContext):
        self.printNode(ctx)

    def visitMethod_name(self, ctx:DecafParser.Method_nameContext):
        self.printNode(ctx)

    def visitLocation(self, ctx:DecafParser.LocationContext):
        self.printNode(ctx)

    def visitExpr(self, ctx:DecafParser.ExprContext):
        self.printNode(ctx)

    def visitCallout_arg(self, ctx:DecafParser.Callout_argContext):
        self.printNode(ctx)

    def visitLiteral(self, ctx:DecafParser.LiteralContext):
        self.printNode(ctx)

source = 'testdata/codegen/01-callout.dcf'
filein = open(source, 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

#create a token stream from the lexer
stream = ant.CommonTokenStream(lexer)

#create a new parser with the token stream as input
parser = DecafParser(stream)
tree = parser.program()

#create a new calc visitor
tree_visitor = DecafTreeVisitor()
tree_visitor.visit(tree)

#output code
print(tree_visitor.text)
