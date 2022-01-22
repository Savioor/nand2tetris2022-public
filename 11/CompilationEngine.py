"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import json
import typing

import SymbolTable
from VMWriter import *

from JackTokenizer import *

UNARY_OP = ['~', '-', '#', '^']
UNARY_OP_TRANSLATE = {
    '~': "not",
    '-': "neg",
    '#': ">>",
    "^": "<<"
}

BITS = 16

KEYWORD_CONSTANT = {TRUE, FALSE, NULL, THIS}
KEYWORD_CONST_MAP = {TRUE: (CONST, (2 ** BITS) - 1), FALSE: (CONST, 0), NULL: (CONST, 0), THIS: (POINTER, 0)}
STATEMENTS = [IF, WHILE, LET, DO, RETURN]
EXPRESSION = 'expression'
SYMBOL = 'symbol'
OPERATORS = "+-*/&|<>="
OPERATORS_MAP = {'<': "lt",
                 '>': "gt",
                 '"': "&qout;",
                 '&': "and",
                 '+': 'add',
                 '-': 'sub',
                 '*': '*',
                 '/': '/',
                 '|': 'or',
                 '=': 'eq'}

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
        self.vm = VMWriter(output_stream)
        self.table = SymbolTable.SymbolTable()
        self.tokens = JackTokenizer(input_stream).run()
        self.pointer = 0
        self.n_fields = 0
        self.methods: set = set()
        self.mfc: str = ""
        self.cur_token = None
        if len(self.tokens) > 0:
            self.cur_token = self.tokens[self.pointer]
        self.out_stream = output_stream
        self.class_name: str = ""

        self.compile_class()
        print("done")

    def advance(self) -> bool:
        p = self.pointer
        try:
            if self.pointer < len(self.tokens):
                self.pointer += 1
                self.cur_token = self.tokens[self.pointer]
                return True

        except IndexError:
            pass
        # raise Exception()

    def compile_class(self) -> None:  # ?
        self.vm.increase_indent()
        """Compiles a complete class"""
        if self.cur_token[VALUE].lower() != "class":
            print("BIG BUG OH NO")

        self.advance()
        self.class_name = self.cur_token[VALUE]
        self.advance()

        def innards():
            while self.cur_token[VALUE].lower() in ["static", "field"]:
                self.compile_class_var_dec()
            while self.cur_token[VALUE].lower() in ["constructor", "function", "method"]:
                self.compile_subroutine()

        self.parenthesis(innards, "{}")

        self.vm.decr_indent()
        # self.out_stream.write("</class>\n")

    def compile_class_var_dec(self) -> None:  # done
        """Compiles a static declaration or a field declaration."""
        # self.out_stream.write("<classVarDec>\n")
        self.vm.increase_indent()

        segment = self.cur_token[VALUE]
        self.keywords()  # advances type
        var_type = self.cur_token[VALUE]
        self.advance()
        if segment == FIELD:
            self.n_fields += 1
        self.table.define(self.cur_token[VALUE], var_type, segment)
        self.identifier()
        while self.cur_token[VALUE] != ';':
            self.symbols(',')
            if segment == FIELD:
                self.n_fields += 1
            self.table.define(self.cur_token[VALUE], var_type, segment)
            self.identifier()
        self.symbols(';')

        self.vm.decr_indent()
        # self.out_stream.write("</classVarDec>\n")

    def compile_subroutine(self) -> None:  # done
        """Compiles a complete method, function, or constructor."""
        # Your code goes here!
        # self.out_stream.write("<subroutineDec>\n")
        self.vm.increase_indent()

        self.table.start_subroutine()
        CompilationEngine.if_index = 0

        self.mfc = self.cur_token[VALUE]
        self.keywords()
        if self.cur_token[VALUE] in ["void", "int", "boolean", "char"]:
            self.keywords()
        else:
            self.identifier()
        sub_name = self.cur_token[VALUE]
        if self.mfc == METHOD:
            self.table.define(THIS, self.class_name, ARG)
            self.methods.add(sub_name)
        self.identifier()
        self.advance()  # (
        n_locals = 0
        self.compile_parameter_list()
        self.advance()  # )
        self.vm.write_out("function " + self.class_name + "." + sub_name + " ")
        to_write_index = self.vm.output_stream.tell()
        self.vm.write_out("           \n")
        self.advance()  # for {
        while self.cur_token[VALUE] == "var":
            n_locals += self.compile_var_dec()
        if self.mfc == METHOD:
            self.vm.write_push(ARG, 0)
            self.vm.write_pop(POINTER, 0)
        if self.mfc == CONSTRUCTOR:
            self.vm.write_push(CONST, self.n_fields)
            self.vm.write_call("Memory.alloc", 1)
            self.vm.write_pop(POINTER, 0)

        self.compile_statements()
        self.advance()  # for }
        # self.out_stream.write("<subroutineBody>\n")
        ret_loc = self.vm.output_stream.tell()
        self.vm.output_stream.seek(to_write_index)
        self.vm.write_out(f"{n_locals}")
        self.vm.output_stream.seek(ret_loc)

        self.vm.decr_indent()

        # self.out_stream.write("</subroutineBody>\n")
        #
        # self.out_stream.write("</subroutineDec>\n")

    def compile_parameter_list(self) -> int:  # done
        """Compiles a (possibly empty) parameter list, not including the
        enclosing "()".
        """
        # self.out_stream.write("<parameterList>\n")
        self.vm.increase_indent()

        counter = 0

        while self.cur_token[VALUE] != ')':
            counter += 1
            var_type = self.cur_token[VALUE]
            self.advance()  # int or class
            var_name = self.cur_token[VALUE]
            self.identifier()
            self.table.define(var_name, var_type, ARG)
            if self.cur_token[VALUE] == ',':
                self.symbols(',')
            else:
                break

        self.vm.decr_indent()

        return counter
        # self.out_stream.write("</parameterList>\n")

    def compile_var_dec(self) -> int:  # done
        """Compiles a var declaration."""
        self.vm.increase_indent()

        count = 1

        self.keywords()  # var
        var_type = self.cur_token[VALUE]
        self.advance()
        self.table.define(self.cur_token[VALUE], var_type, VAR)
        self.advance()
        while self.cur_token[VALUE] == ",":
            self.symbols(",")
            self.table.define(self.cur_token[VALUE], var_type, VAR)
            self.advance()
            count += 1
        self.symbols(";")
        self.vm.decr_indent()

        return count

    def compile_statements(self) -> None:  # done
        """Compiles a sequence of statements, not including the enclosing
        "{}".
        """
        # Your code goes here!
        # self.out_stream.write("<statements>\n")
        self.vm.increase_indent()

        while self.cur_token[VALUE] in STATEMENTS:
            # self.out_stream.write(f"<{statement_type}Statement>\n")

            getattr(self, "compile_" + self.cur_token[VALUE].lower())()

            # self.out_stream.write(f"</{statement_type}Statement>\n")

        self.vm.decr_indent()
        # self.out_stream.write("</statements>\n")

    def compile_do(self) -> None:  # done
        """Compiles a do statement."""
        # Your code goes he
        self.vm.increase_indent()
        self.keywords()
        self.compile_term()
        self.symbols(';')
        self.vm.write_pop(TEMP, 0)
        self.vm.decr_indent()

    def compile_let(self) -> None:  # done
        """Compiles a let statement."""
        # Your code goes here!
        self.vm.increase_indent()
        self.keywords()
        var_name = self.cur_token[VALUE]
        self.identifier()
        # self.smart_push(var_name)

        if self.cur_token[VALUE] == '[':
            self.parenthesis(self.compile_expression, "[]")
            self.smart_push(var_name)
            self.vm.write_arithmetic("add")

            # self.vm.write_pop(POINTER, 1)

            self.symbols('=')
            self.compile_expression()
            self.symbols(';')

            self.vm.write_pop("temp", 0)
            self.vm.write_pop(POINTER, 1)
            self.vm.write_push("temp", 0)
            self.vm.write_pop(THAT, 0)

        else:
            self.symbols('=')
            self.compile_expression()
            self.symbols(';')
            self.smart_pop(var_name)

        self.vm.decr_indent()

    while_index = 0

    def compile_while(self) -> None:  # DONE
        """Compiles a while statement."""
        index = CompilationEngine.while_index
        self.vm.increase_indent()
        self.keywords()
        self.vm.write_label(f"WHILE_EXP{index}")
        CompilationEngine.while_index += 1

        self.parenthesis(self.compile_expression, "()")
        self.vm.write_arithmetic("not")
        self.vm.write_if(f"WHILE_END{index}")
        self.parenthesis(self.compile_statements, "{}")
        self.vm.write_goto(f"WHILE_EXP{index}")
        self.vm.write_label(f"WHILE_END{index}")

        self.vm.decr_indent()

    def compile_return(self) -> None:  # done
        """Compiles a return statement."""
        # Your code goes "here!
        self.vm.increase_indent()

        self.keywords()
        if self.cur_token[VALUE] != ';':
            self.compile_expression()
        elif self.mfc == CONSTRUCTOR:
            self.vm.write_push(POINTER, 0)
        else:
            self.vm.write_push(CONST, 0)  # todo check if im right and we need to add 0
        self.vm.write_return()
        self.symbols(';')
        self.vm.decr_indent()

    if_index = 0

    def compile_if(self) -> None:
        """Compiles a if statement, possibly with a trailing else clause."""
        self.vm.increase_indent()
        self.keywords()  # if
        index = CompilationEngine.if_index

        self.parenthesis(self.compile_expression, "()")
        # self.vm.write_arithmetic("not")
        self.vm.write_if(f"IF_TRUE{index}")
        self.vm.write_goto(f"IF_FALSE{index}")
        self.vm.write_label(f"IF_TRUE{index}")

        CompilationEngine.if_index += 1

        self.parenthesis(self.compile_statements, "{}")

        if self.cur_token[VALUE] == ELSE:
            self.vm.write_goto(f"IF_END{index}")
        self.vm.write_label(f"IF_FALSE{index}")

        if self.cur_token[VALUE] == ELSE:
            self.keywords()
            self.parenthesis(self.compile_statements, "{}")
            self.vm.write_label(f"IF_END{index}")

        # CompilationEngine.if_index += 1

        self.vm.decr_indent()

    def compile_expression(self) -> None:  # done
        """Compiles an expression."""
        self.vm.increase_indent()
        self.compile_term()
        while str(self.cur_token[VALUE]) in OPERATORS:
            op = self.cur_token[VALUE]
            self.symbols(op)
            self.compile_term()
            if op == "/":
                self.vm.write_call("Math.divide", 2)
            elif op == "*":
                self.vm.write_call("Math.multiply", 2)
            else:
                self.vm.write_arithmetic(OPERATORS_MAP[op])

        self.vm.decr_indent()

    def compile_term(self) -> None:  # done
        """Compiles a term.
        This routine is faced with a slight difficulty when
        trying to decide between some of the alternative parsing rules.
        Specifically, if the current token is an identifier, the routing must
        distinguish between a variable, an array entry, and a subroutine call.
        A single look-ahead token, which may be one of "[", "(", or "." suffices
        to distinguish between the three possibilities. Any other token is not
        part of this term and should not be advanced over.

        The result of the term will be the topmost element in the stack
        """
        self.vm.increase_indent()

        if self.cur_token[TYPE] in {INT_CONST, STRING_CONST} or self.cur_token[VALUE] in KEYWORD_CONSTANT:
            if self.cur_token[TYPE] == INT_CONST:
                self.vm.write_push(CONST, int(self.cur_token[VALUE]))
                self.advance()
            elif self.cur_token[TYPE] == STRING_CONST:
                self.vm.write_push(CONST, len(self.cur_token[VALUE]))
                self.vm.write_call("String.new", 1)
                for c in self.cur_token[VALUE]:
                    self.vm.write_push(CONST, ord(c))
                    self.vm.write_call("String.appendChar", 2)
                self.advance()
            elif self.cur_token[VALUE] == TRUE:
                self.vm.write_push(CONST, 0)
                self.vm.write_arithmetic("not")
                self.advance()
            else:
                # {TRUE, FALSE, NULL, THIS}
                self.vm.write_push(*KEYWORD_CONST_MAP[self.cur_token[VALUE]])
                self.advance()
        elif self.cur_token[VALUE] in "(":  # (expression)
            self.parenthesis(self.compile_expression, "()")
        elif self.cur_token[VALUE] in UNARY_OP:
            val = self.cur_token[VALUE]
            self.advance()
            self.compile_term()
            self.vm.write_arithmetic(UNARY_OP_TRANSLATE[val])
        elif self.tokens[self.pointer + 1][VALUE] == '(':  # call subroutine
            func_name = self.cur_token[VALUE]
            self.advance()  # for name
            self.advance()  # for (
            self.vm.write_push(POINTER, 0)
            func_args = self.compile_expression_list()
            self.advance()  # for )
            self.vm.write_call(self.class_name + "." + func_name, func_args + 1)
            # else:
            #     self.vm.write_call(self.class_name + "." + func_name, func_args)

        elif self.tokens[self.pointer + 1][VALUE] == '.':  # another subroutine
            class_name = self.cur_token[VALUE]
            if class_name[0].islower():
                obj_name = class_name
                self.smart_push(obj_name)
            else:
                obj_name = None

            self.advance()  # for name
            self.advance()  # for dot
            method_name = self.cur_token[VALUE]
            self.advance()  # for method name
            self.advance()  # for (
            func_args = self.compile_expression_list()
            self.advance()  # for )
            if obj_name is not None:
                self.vm.write_call(self.table.type_of(obj_name) + "." + method_name, func_args + 1)
            else:
                self.vm.write_call(class_name + "." + method_name, func_args)

        elif self.tokens[self.pointer + 1][VALUE] == '[':  # array access
            var_name = self.cur_token[VALUE]
            self.advance()
            self.smart_push(var_name)
            self.parenthesis(self.compile_expression, "[]")
            self.vm.write_arithmetic("add")
            self.vm.write_pop(POINTER, 1)
            self.vm.write_push(THAT, 0)
            # self.compile_expression()
            # self.vm.write_pop(THAT, 0)
        else:  # can only be varName
            self.smart_push(self.cur_token[VALUE])
            self.identifier()

        self.vm.decr_indent()

    def smart_push(self, var_name):
        kind = self.table.kind_of(var_name)
        index = self.table.index_of(var_name)
        if kind == FIELD:
            self.vm.write_push(THIS, index)
        elif kind == STATIC:
            self.vm.write_push(STATIC, index)
        elif kind == ARG:
            self.vm.write_push(ARG, index)
        elif kind == VAR:
            self.vm.write_push(LOCAL, index)

    def smart_pop(self, var_name):
        kind = self.table.kind_of(var_name)
        index = self.table.index_of(var_name)
        if kind == FIELD:
            self.vm.write_pop(THIS, index)
        elif kind == STATIC:
            self.vm.write_pop(STATIC, index)
        elif kind == ARG:
            self.vm.write_pop(ARG, index)
        elif kind == VAR:
            self.vm.write_pop(LOCAL, index)

    def log(self, message):
        self.vm.write_comment(message)

    def compile_expression_list(self) -> int:  # done
        """Compiles a (possibly empty) comma-separated list of expressions."""
        # Your code goes here!

        self.vm.increase_indent()
        counter = 0

        while self.cur_token[VALUE] != ')':
            self.compile_expression()
            counter += 1
            if self.cur_token[VALUE] != ')':
                self.advance()
            else:
                break

        self.vm.decr_indent()
        return counter

    def symbols(self, symbol):
        # self.out_stream.write(f"<{SYMBOL}> {symbol} </{SYMBOL}>\n")
        self.advance()

    def keywords(self):
        # self.out_stream.write(f"<keyword> {self.cur_token[VALUE]} </keyword>\n")
        self.advance()

    def statements(self, var_type):
        # self.out_stream.write(f"<{var_type}Statement> {var_type} </{var_type}Statement>\n")
        self.advance()

    def identifier(self):
        # self.out_stream.write(f"<identifier> {self.cur_token[VALUE]} </identifier>\n")
        self.advance()

    def parenthesis(self, func, paren):
        self.advance()
        func()
        self.advance()


if __name__ == '__main__':
    print("hello world")