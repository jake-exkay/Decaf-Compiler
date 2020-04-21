import os
import antlr4 as ant

os.system("java -Xmx500M -cp antlr-4.7.2-complete.jar org.antlr.v4.Tool -Dlanguage=Python3 Decaf.g4 -visitor")

from DecafLexer import DecafLexer

filein = open('testdata/lexer/string3', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

done = False

for i in range(100):
    token = lexer.nextToken()
    if (token.type != -1):
        print(lexer.symbolicNames[token.type])
