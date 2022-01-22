"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import json
import typing

from JackTokenizer import *

UNARY_OP = ['~', '-', '#', '^']

KEYWORD_CONSTANT = {TRUE, FALSE, NULL, THIS}
STATEMENTS = [IF, WHILE, LET, DO, RETURN]
EXPRESSION = 'expression'
SYMBOL = 'symbol'
OPERATORS = "+-*/&|<>="
OPERATORS_MAP = {'<': "&lt;", '>': "&gt;", '"': "&qout;", '&': "&amp;", '+': '+', '-': '-', '*': '*', '/': '/',
                 '|': '|',
                 '=': '='}

TYPE = 1
VALUE = 0


class CompilationEngine:
    """Gets input from a JackTokenizer and emits its parsed structure into an
    output stream.
    """

    def __init__(self, input_stream: typing.TextIO,
                 output_stream: typing.TextIO) -> None:
        """
        Creates a new compilation engine with the given input and output. The
        next routine called must be compileClass()
        :param input_stream: The input stream.
        :param output_stream: The output stream.
        """
        self.counter = 0
        self.tokens = JackTokenizer(input_stream).run()
        self.pointer = 0
        self.cur_token = None
        if len(self.tokens) > 0:
            self.cur_token = self.tokens[self.pointer]
        self.out_stream = output_stream

        # print(self.tokens)
        with open('app.json', 'w') as f:
            json.dump(self.tokens, f, indent=2)

        self.compile_class()
        print("done")

    def advance(self) -> bool:
        try:
            if self.pointer < len(self.tokens):
                self.pointer += 1
                self.cur_token = self.tokens[self.pointer]
                return True

        except IndexError:
            pass
        # raise Exception()

    def compile_class(self) -> None:
        """Compiles a complete class"""
        if self.cur_token[VALUE].lower() != "class":
            print("BIG BUG OH NO")
        self.out_stream.write("<class>\n")
        self.counter += 1
        self.keywords()
        self.identifier()

        def innards():
            while self.cur_token[VALUE].lower() in ["static", "field"]:
                self.compile_class_var_dec()
            while self.cur_token[VALUE].lower() in ["constructor", "function", "method"]:
                self.compile_subroutine()

        self.parenthesis(innards, "{}")
        self.counter -= 1
        self.out_stream.write("</class>\n")

    def compile_class_var_dec(self) -> None:
        """Compiles a static declaration or a field declaration."""
        self.out_stream.write(self.counter * "  " + "<classVarDec>\n")
        self.counter += 1

        self.keywords()
        if self.cur_token[VALUE] in ["int", "boolean", "char"]:
            self.keywords()
        else:
            self.identifier()
        self.identifier()
        while self.cur_token[VALUE] != ';':
            self.symbols(',')
            # self.keywords()
            self.identifier()
        self.symbols(';')

        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</classVarDec>\n")

    def compile_subroutine(self) -> None:
        """Compiles a complete method, function, or constructor."""
        # Your code goes here!
        self.out_stream.write(self.counter * "  " + "<subroutineDec>\n")
        self.counter += 1
        self.keywords()
        if self.cur_token[VALUE] in ["void", "int", "boolean", "char"]:
            self.keywords()
        else:
            self.identifier()
        self.identifier()
        self.parenthesis(self.compile_parameter_list, "()")

        def complie_body():
            while self.cur_token[VALUE] == "var":
                self.compile_var_dec()
            self.compile_statements()

        self.out_stream.write(self.counter * "  " + "<subroutineBody>\n")
        self.counter += 1
        self.parenthesis(complie_body, "{}")
        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</subroutineBody>\n")

        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</subroutineDec>\n")

    def compile_parameter_list(self) -> None:
        """Compiles a (possibly empty) parameter list, not including the 
        enclosing "()".
        """
        self.out_stream.write(self.counter * "  " + "<parameterList>\n")
        self.counter += 1

        while self.cur_token[VALUE] != ')':
            if self.cur_token[VALUE] in KEYWORDS:
                self.keywords()
            else:
                self.identifier()
            self.identifier()
            if self.cur_token[VALUE] == ',':
                self.symbols(',')
            else:
                break
        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</parameterList>\n")

    def compile_var_dec(self) -> None:
        """Compiles a var declaration."""
        self.out_stream.write(self.counter * "  " + "<varDec>\n")
        self.counter += 1
        self.keywords()
        if self.cur_token[VALUE] in ["int", "char", "boolean"]:
            self.keywords()
        else:
            self.identifier()
        self.identifier()
        while self.cur_token[VALUE] == ",":
            self.symbols(",")
            self.identifier()
        self.symbols(";")
        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</varDec>\n")

    def compile_statements(self) -> None:
        """Compiles a sequence of statements, not including the enclosing 
        "{}".
        """
        # Your code goes here!
        self.out_stream.write(self.counter * "  " + "<statements>\n")
        self.counter += 1

        while self.cur_token[VALUE] in STATEMENTS:
            statement_type = self.cur_token[VALUE]
            self.out_stream.write(self.counter * "  " + f"<{statement_type}Statement>\n")
            self.counter += 1
            getattr(self, "compile_" + self.cur_token[VALUE].lower())()
            self.counter -= 1
            self.out_stream.write(self.counter * "  " + f"</{statement_type}Statement>\n")

        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</statements>\n")

    def compile_do(self) -> None:
        """Compiles a do statement."""
        # Your code goes here!
        self.keywords()
        self.compile_term()
        self.symbols(';')

    def compile_let(self) -> None:
        """Compiles a let statement."""
        # Your code goes here!
        self.keywords()
        self.identifier()
        if self.cur_token[VALUE] == '[':
            self.parenthesis(self.compile_expression, "[]")
        self.symbols('=')
        self.compile_expression()
        self.symbols(';')

    def compile_while(self) -> None:
        """Compiles a while statement."""
        self.keywords()
        self.parenthesis(self.compile_expression, "()")
        self.parenthesis(self.compile_statements, "{}")

    def compile_return(self) -> None:
        """Compiles a return statement."""
        # Your code goes here!
        self.keywords()
        if self.cur_token[VALUE] != ';':
            self.compile_expression()
        self.symbols(';')

    def compile_if(self) -> None:
        """Compiles a if statement, possibly with a trailing else clause."""
        self.keywords()
        self.parenthesis(self.compile_expression, "()")
        self.parenthesis(self.compile_statements, "{}")
        if self.cur_token[VALUE] == ELSE:
            self.keywords()
            self.parenthesis(self.compile_statements, "{}")
        # Your code goes here!
        pass

    def compile_expression(self) -> None:
        """Compiles an expression."""
        self.out_stream.write(self.counter * "  " + f"<{EXPRESSION}>\n")
        self.counter += 1
        self.out_stream.write(self.counter * "  " + "<term>\n")
        self.counter += 1
        self.compile_term()
        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</term>\n")
        while str(self.cur_token[VALUE]) in OPERATORS:
            self.symbols(OPERATORS_MAP[self.cur_token[VALUE]])
            self.out_stream.write(self.counter * "  " + "<term>\n")
            self.counter += 1
            self.compile_term()
            self.counter -= 1
            self.out_stream.write(self.counter * "  " + "</term>\n")
        self.counter -= 1
        self.out_stream.write(self.counter * "  " + f"</{EXPRESSION}>\n")

    def compile_term(self) -> None:
        """Compiles a term. 
        This routine is faced with a slight difficulty when
        trying to decide between some of the alternative parsing rules.
        Specifically, if the current token is an identifier, the routing must
        distinguish between a variable, an array entry, and a subroutine call.
        A single look-ahead token, which may be one of "[", "(", or "." suffices
        to distinguish between the three possibilities. Any other token is not
        part of this term and should not be advanced over.
        """
        # Your code goes here!


        if self.cur_token[TYPE] in {INT_CONST, STRING_CONST} or self.cur_token[VALUE] in KEYWORD_CONSTANT:

            if self.cur_token[TYPE] == INT_CONST:
                self.out_stream.write(
                    self.counter * "  " + f"<integerConstant> {self.cur_token[VALUE]} </integerConstant>\n")
                self.advance()
            elif self.cur_token[TYPE] == STRING_CONST:
                self.out_stream.write(
                    self.counter * "  " + f"<stringConstant> {self.cur_token[VALUE]} </stringConstant>\n")
                self.advance()
            else:
                self.keywords()
            # self.counter -= 1
            # self.out_stream.write(self.counter * "  " + "</term>\n")


        elif self.cur_token[VALUE] in "(":  # (expression)
            # self.out_stream.write(self.counter * "  " + "<term>\n")
            # self.counter += 1
            self.parenthesis(self.compile_expression, "()")
            # self.counter -= 1
            # self.out_stream.write(self.counter * "  " + "</term>\n")

        elif self.cur_token[VALUE] in UNARY_OP:
            # self.out_stream.write(self.counter * "  " + "<term>\n")
            # self.counter += 1
            self.symbols(self.cur_token[VALUE])
            self.out_stream.write(self.counter * "  " + "<term>\n")
            self.counter += 1
            self.compile_term()
            self.counter -= 1
            self.out_stream.write(self.counter * "  " + "</term>\n")
            # self.counter -= 1
            # self.out_stream.write(self.counter * "  " + "</term>\n")

        elif self.tokens[self.pointer + 1][VALUE] == '(':
            self.identifier()
            self.parenthesis(self.compile_expression_list, "()")
        elif self.tokens[self.pointer + 1][VALUE] == '.':
            self.identifier()
            self.symbols(".")
            self.identifier()
            self.parenthesis(self.compile_expression_list, "()")

        elif self.tokens[self.pointer + 1][VALUE] == '[':  # array access
            # self.out_stream.write(self.counter * "  " + "<term>\n")
            # self.counter += 1
            self.identifier()
            self.parenthesis(self.compile_expression, "[]")
            # self.counter -= 1
            # self.out_stream.write(self.counter * "  " + "</term>\n")

        else:
            # self.out_stream.write(self.counter * "  " + "<term>\n")
            # self.counter += 1
            self.identifier()


    def compile_expression_list(self) -> None:
        """Compiles a (possibly empty) comma-separated list of expressions."""
        # Your code goes here!
        self.out_stream.write(self.counter * "  " + "<expressionList>\n")
        self.counter += 1

        while self.cur_token[VALUE] != ')':
            self.compile_expression()
            if self.cur_token[VALUE] != ')':
                self.symbols(',')
            else:
                break
        self.counter -= 1
        self.out_stream.write(self.counter * "  " + "</expressionList>\n")

    def symbols(self, symbol):
        self.out_stream.write(self.counter * "  " + f"<{SYMBOL}> {symbol} </{SYMBOL}>\n")
        self.advance()

    def keywords(self):
        self.out_stream.write(self.counter * "  " + f"<keyword> {self.cur_token[VALUE]} </keyword>\n")
        self.advance()

    def statements(self, var_type):
        self.out_stream.write(self.counter * "  " + f"<{var_type}Statement> {var_type} </{var_type}Statement>\n")
        self.advance()

    def identifier(self):
        self.out_stream.write(self.counter * "  " + f"<identifier> {self.cur_token[VALUE]} </identifier>\n")
        self.advance()

    def parenthesis(self, func, paren):
        self.symbols(paren[0])
        func()
        self.symbols(paren[1])


if __name__ == '__main__':
    print("hello world")
