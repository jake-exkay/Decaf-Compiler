import antlr4 as ant
from DecafLexer import DecafLexer

filein = open('testdata/lexer/ws1', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

done = False

for i in range(100):
    token = lexer.nextToken()
    if (token.type != -1):
        print(lexer.symbolicNames[token.type])

## Working Tests ##
# char1 / char2 / char5 / char6 / char8 / char9
# id1 / id2 / id3
# op1 / op2
# tokens2 / tokens3

## Broken ##
# char3 / char4 / char7
# hexlit1 / hexlit2 / hexlit3
# number1 / number2
# string1 / string2 / string3
# tokens1: true/false are ID / tokens4 : true/false are ID, int literals
# ws1
