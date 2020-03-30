import antlr4 as ant
from DecafLexer import DecafLexer

filein = open('testdata/lexer/char1', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

## W: op1/op2/id1/id3/tokens2/tokens3/char1/char2/char3/char5/char6/char8/char9/tokens4/ws1/id2/number1

## NW: number2 / hexlit1 / tokens4 / char4 / char7 / hexlit1 /
## hexlit2 / hexlit3 / string1 / string2 / string3 / tokens1
## tokens1 not picking up true/false as bool_literal

done = False

for i in range(100):
    token = lexer.nextToken()
    if (token.type != -1):
        print(lexer.symbolicNames[token.type])
