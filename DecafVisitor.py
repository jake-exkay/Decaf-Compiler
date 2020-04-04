# Generated from Decaf.g4 by ANTLR 4.7.2
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .DecafParser import DecafParser
else:
    from DecafParser import DecafParser

# This class defines a complete generic visitor for a parse tree produced by DecafParser.

class DecafVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by DecafParser#program.
    def visitProgram(self, ctx:DecafParser.ProgramContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#field_name.
    def visitField_name(self, ctx:DecafParser.Field_nameContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#field_decl.
    def visitField_decl(self, ctx:DecafParser.Field_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#method_decl.
    def visitMethod_decl(self, ctx:DecafParser.Method_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#block.
    def visitBlock(self, ctx:DecafParser.BlockContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#var_decl.
    def visitVar_decl(self, ctx:DecafParser.Var_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#statement.
    def visitStatement(self, ctx:DecafParser.StatementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#method_call.
    def visitMethod_call(self, ctx:DecafParser.Method_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#method_name.
    def visitMethod_name(self, ctx:DecafParser.Method_nameContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#location.
    def visitLocation(self, ctx:DecafParser.LocationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#expr.
    def visitExpr(self, ctx:DecafParser.ExprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#callout_arg.
    def visitCallout_arg(self, ctx:DecafParser.Callout_argContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by DecafParser#literal.
    def visitLiteral(self, ctx:DecafParser.LiteralContext):
        return self.visitChildren(ctx)



del DecafParser