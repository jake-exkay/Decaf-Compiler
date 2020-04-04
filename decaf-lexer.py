import antlr4 as ant
from DecafLexer import DecafLexer

filein = open('testdata/lexer/char2', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

done = False

for i in range(100):
    token = lexer.nextToken()
    if (token.type != -1):
        print(lexer.symbolicNames[token.type])

## Working Tests ##
# char1 / char3 / char4 / char5 / char6 / char7 / char8 / char9
# id1 / id2 / id3
# op1 / op2
# tokens1 / tokens2 / tokens3 / tokens4
# number1 / number2
# hexlit1 / hexlit2 / hexlit3 / ws1
# string1 / string2 / string3


## Broken ##
# char2
