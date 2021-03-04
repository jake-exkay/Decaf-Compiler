# Decaf-Compiler
## Project Details
Project undertaken as part of my BSc Computer Science degree (final year) in the Programming Languages: Principles and Design unit. During this unit, we learned how to write a functional compiler complete with lexer, parser and code generation.

## Lexer
Lexical analysis converts a sequence of words into a sequence of tokens to be understood further by the parser. This is the first step in compiler design as it translates written code into their respective tokens. For example: INT i = 0; would translate to something like "DATATYPE VAR_NAME ASSIGNMENT VALUE SEMICOLON" in lexical analysis.

## Parser
The parser takes a sequence of tokens converted during the lexical analysis process and parses them. This tells the complier the structures present in the code. For example "DATATYPE VAR_NAME ASSIGNMENT VALUE SEMICOLON" would register as a variable assignment in the parsing process.

## Code Generation
Finally, code generation and semantic analysis takes these values and generates machine code based on them. This is done by taking the parsed code and translating it to assembly language.
