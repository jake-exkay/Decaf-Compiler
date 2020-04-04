import antlr4 as ant
from DecafLexer import DecafLexer
from DecafParser import DecafParser
from DecafVisitor import DecafVisitor

class DecafPrintVisitor(DecafVisitor):
    def __init__(self):
        super().__init__()
        self.text = ''

    # Visit a parse tree produced by DecafParser#program.
    def visitProgram(self, ctx:DecafParser.ProgramContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#field_name.
    def visitField_name(self, ctx:DecafParser.Field_nameContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#field_decl.
    def visitField_decl(self, ctx:DecafParser.Field_declContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#method_decl.
    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#block.
    def visitBlock(self, ctx:DecafParser.BlockContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#var_decl.
    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#statement.
    def visitStatement(self, ctx:DecafParser.StatementContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#method_call.
    def visitMethod_call(self, ctx:DecafParser.Method_callContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#method_name.
    def visitMethod_name(self, ctx:DecafParser.Method_nameContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#location.
    def visitLocation(self, ctx:DecafParser.LocationContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#expr.
    def visitExpr(self, ctx:DecafParser.ExprContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#callout_arg.
    def visitCallout_arg(self, ctx:DecafParser.Callout_argContext):
        return self.printNode(ctx)


    # Visit a parse tree produced by DecafParser#literal.
    def visitLiteral(self, ctx:DecafParser.LiteralContext):
        return self.printNode(ctx)

    def printNode(self, ctx):
         self.text = self.text + '{\"name\": \"' + parser.ruleNames[ctx.getRuleIndex()] + '\",' + '\"value\":2,' + '\"children\":['
         self.visitChildren(ctx)
         self.text = self.text + ']},'
    def visitTerminal(self, ctx):
        self.text = self.text + '{\"name\": \"' + ctx.getText().replace('\\', '\\\\').replace('\"', '\\\"') + '\"},'


filein = open('testdata/parser/legal-01', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

stream = ant.CommonTokenStream(lexer)
parser = DecafParser(stream)
tree = parser.program()

visitor = DecafPrintVisitor()
visitor.visit(tree)
print(visitor.text)

## Legal: 4, 6, 7, 8, 11, 12, 13, 14, 15, 16
## Illegal:
