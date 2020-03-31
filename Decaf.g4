grammar Decaf;

/*
  LEXER RULES
  -----------
  Lexer rules define the basic syntax of individual words and symbols of a
  valid Decaf program. Lexer rules follow regular expression syntax.
  Complete the lexer rules following the Decaf Language Specification.
*/

/* Reserved words */
fragment BOOLEAN : 'boolean';
BREAK : 'break';
CALLOUT : 'callout';
CLASS : 'class';
CONTINUE : 'continue';
ELSE : 'else';
fragment FALSE : 'false';
FOR : 'for';
IF : 'if';
fragment INT : 'int';
RETURN : 'return';
fragment TRUE : 'true';
VOID : 'void';

/* WS + comments */
WS : [ \t\r\n]+ -> skip;
COMMENT : '/''/'~[\n|\r]* -> skip;

LCURLY : '{';
RCURLY : '}';
LSQUARE : '[';
RSQUARE : ']';
LBRACKET : '(';
RBRACKET : ')';
SEMICOLON : ';';
COMMA : ',';
fragment PLUS : '+';
MINUS : '-';
fragment MULTIPLY : '*';
fragment DIVIDE : '/';
fragment MODULUS : '%';
EXCLAMATION : '!';
fragment LESS_THAN : '<';
fragment GREATER_THAN : '>';
fragment LESS_EQUAL : '<=';
fragment GREATER_EQUAL : '>=';
fragment EQUAL_TO : '==';
fragment NOT_EQUAL : '!=';
fragment AND : '&&';
fragment OR : '||';
fragment HEX : '0x';
EQUALS : '=';
fragment PLUS_EQUALS : '+=';
fragment MINUS_EQUALS : '-=';

TYPE : INT | BOOLEAN;

/* Binary operators */
ASSIGN_OP : EQUALS | PLUS_EQUALS | MINUS_EQUALS;
fragment ARITH_OP : PLUS | MINUS | MULTIPLY | DIVIDE | MODULUS;
fragment REL_OP : LESS_THAN | GREATER_THAN | LESS_EQUAL | GREATER_EQUAL;
fragment EQ_OP : EQUAL_TO | NOT_EQUAL;
fragment COND_OP : AND | OR;
BIN_OP : ARITH_OP | REL_OP | EQ_OP | COND_OP;

/* Alpha/Digits/String/Chars */
fragment ALPHA : [a-zA-Z_];
fragment DIGIT : [0-9];
fragment ALPHA_NUM : ALPHA | DIGIT;
ID : ALPHA ALPHA_NUM*;
HEX_DIGIT : DIGIT [a-fA-F]*;

CHAR : '\''('\\')*((ALPHA_NUM) | ('\\"') | ('\\') | ('\'') )'\'';

/* Literals */
INT_LITERAL : DECIMAL_LITERAL | HEX_LITERAL;
DECIMAL_LITERAL : DIGIT DIGIT*;
HEX_LITERAL : HEX HEX_DIGIT HEX_DIGIT*;
BOOL_LITERAL : TRUE | FALSE;
CHAR_LITERAL : '\''CHAR'\'';
STRING_LITERAL : '"'CHAR+'"';

/*
  PARSER RULES
  ------------
  Parser rules are all lower case, and make use of lexer rules defined above
  and other parser rules defined below. Parser rules also follow regular
  expression syntax. Complete the parser rules following the Decaf Language
  Specification.
*/

program : CLASS ID LCURLY field_decl* method_decl* RCURLY EOF;
field_name : ID | ID LSQUARE INT_LITERAL RSQUARE;
field_decl : TYPE field_name (COMMA field_name)* SEMICOLON;
method_decl : (TYPE | VOID) ID LBRACKET ((TYPE ID) (COMMA TYPE ID)*)* RBRACKET block;
block : LCURLY var_decl* statement* RCURLY;
var_decl : TYPE ID (COMMA ID)* SEMICOLON;
statement : location ASSIGN_OP expr SEMICOLON
          | method_call SEMICOLON
          | IF LBRACKET expr RBRACKET block (ELSE block)?
          | FOR ID EQUALS expr COMMA expr block
          | RETURN expr? SEMICOLON
          | BREAK SEMICOLON
          | CONTINUE SEMICOLON
          | block;
method_call : method_name LBRACKET (expr (COMMA expr)*)* RBRACKET
          | CALLOUT LBRACKET STRING_LITERAL (COMMA callout_arg)* RBRACKET;
method_name : ID;
location : ID
        | ID LSQUARE expr RSQUARE;
expr : location
     | method_call
     | literal
     | expr BIN_OP expr
     | MINUS expr
     | EXCLAMATION expr
     | LBRACKET expr RBRACKET;
callout_arg : expr
            | STRING_LITERAL;
literal : INT_LITERAL | CHAR_LITERAL | BOOL_LITERAL;
