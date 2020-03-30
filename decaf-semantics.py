import antlr4 as ant
from DecafLexer import DecafLexer
from DecafParser import DecafParser
from DecafVisitor import DecafVisitor
import SymbolTable

class DecafSemanticVisitor(DecafVisitor):
    def __init__(self):
        super().__init__()
        self.st = SymbolTable.SymbolTable()

    def visitProgram(self, ctx:DecafParser.ProgramContext):
        self.st.enterScope()
        return self.visitChildren(ctx)

    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        #1. get method return type
        method_type = ctx.return_type().getText()
        #2. get method name
        method_name = ctx.ID(0).getText()
        #3. get list of method parameter types and names
        param_types = []
        param_names = []
        for i in range(len(ctx.data_type())):
            param_types.append(ctx.data_type(i).getText())
            param_names.append(ctx.ID(i + 1).getText())
        #4. create a new method symbol
        method_symbol = SymbolTable.MethodSymbol(method_name, method_type, ctx.start.line, param_types)
        #5. add method symbol to current scope
        self.st.addSymbol(method_symbol)
        #6. enter the method scope
        self.st.enterScope()
        #7. add method symbol to method scope (method names hsould exist in two scopes)
        
        #8. add the method parameters as individual symbols
        for i in range(len(param_types)):
            self.st.addSymbol(SymbolTable.VarSymbol(param_names[i], param_types[i], ctx.start.line))
        #9. visit child nodes (all sub trees and nodes)
        result = self.visitChildren(ctx)
        #10. exis the method scope (after visiting all sub-trees!)
        self.st.exitScope()
        return result

    def visitExpr(self, ctx:DecafParser.ExprContext):
        #1. if expression contains location then check symbol table (global scope) for identifier
        if ctx.location():
            id = ctx.location().ID().getText()
            #2. if identifier not in symbol table then report error
            if (self.st.lookup(id) == None):
                print("Error: Found on line", ctx.start.line, ": ID(", id, ") not declared before use.")
        #hint ctx.location() returns None if not part of expression
        #hint ctx.location() returns location rule context (e.g. ctx.location().ID().getText() gets identifier name)

        return self.visitChildren(ctx)

    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        #1. loop over all identifiers in declaration
        for id in ctx.ID():
            name = id.getText()
            #2. if already in symbol table (current scope) then report error
            if (self.st.probe(name) != None):
                print("Error: Found on line", ctx.start.line, ": ID(", name, ") redeclared in same script.")
            #3. if not in symbol table (current scope) then add symbol
            self.st.addSymbol(SymbolTable.VarSymbol(name, -1, ctx.start.line))

        #hint: ctx.ID() gets list of ID symbols you can iterate over
        #hint: if id is an element of ctx.ID(), then id.getText() gets the identifier name
        #hint: ctx.start.line gets the line number in the source file

        return self.visitChildren(ctx)

filein = open('my_test_file.dcf', 'r')
lexer = DecafLexer(ant.InputStream(filein.read()))

#create a token stream from the lexer
stream = ant.CommonTokenStream(lexer)

#create a new parser with the token stream as input
parser = DecafParser(stream)
tree = parser.program()

#create a new calc visitor
semanticvisitor = DecafSemanticVisitor()
semanticvisitor.visit(tree)
