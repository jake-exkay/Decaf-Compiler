import antlr4 as ant
from DecafLexer import DecafLexer
from DecafVisitor import DecafVisitor
from DecafParser import DecafParser

class DecafPrintVisitor(DecafVisitor):
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

filein = open('testdata/parser/legal-04', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

for i in range(100):
    token = lexer.nextToken()
    if (token.type != -1):
        print(lexer.symbolicNames[token.type])

stream = ant.CommonTokenStream(lexer)
parser = DecafParser(stream)
tree = parser.program()

visitor = DecafPrintVisitor()
visitor.visit(tree)
print(visitor.text)
