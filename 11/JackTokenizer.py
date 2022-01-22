"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

KEYWORD, SYMBOL, IDENTIFIER, INT_CONST, STRING_CONST = "KEYWORD", "SYMBOL", "IDENTIFIER", "INT_CONST", "STRING_CONST"
SYMBOLS = "{}[]().,;+-*/&|<>=~^#"
WHITESPACE = " \r\n\t"
STRING_MARKERS = "\"'"
NEWLINE = "\n"
COMMENT_SINGLE = "//"
COMMENT_LONG = "/*"

CLASS, METHOD, FUNCTION, CONSTRUCTOR, INT, \
BOOLEAN, CHAR, VOID, VAR, STATIC, FIELD, LET, DO, \
IF, ELSE, WHILE, RETURN, TRUE, FALSE, NULL, THIS = \
    'class', \
    'method', \
    'function', \
    'constructor', \
    'int', \
    'boolean', \
    'char', \
    'void', \
    'var', \
    'static', \
    'field', \
    'let', \
    'do', \
    'if', \
    'else', \
    'while', \
    'return', \
    'true', \
    'false', \
    'null', \
    'this'
KEYWORDS = [
    CLASS, METHOD, FUNCTION, CONSTRUCTOR, INT,
    BOOLEAN, CHAR, VOID, VAR, STATIC, FIELD, LET, DO,
    IF, ELSE, WHILE, RETURN, TRUE, FALSE, NULL, THIS
]


class JackTokenizer:
    """Removes all comments from the input stream and breaks it
    into Jack language tokens, as specified by the Jack grammar.
    """

    def __init__(self, input_stream: typing.TextIO) -> None:
        """Opens the input stream and gets ready to tokenize it.

        Args:
            input_stream (typing.TextIO): input stream.
        """
        self.curr_token: str = NULL
        self.curr_token_type: str = NULL
        self.raw_text = input_stream.read().strip(WHITESPACE)
        self.pointer = 0

    def peek(self, amount=1):
        return self.raw_text[self.pointer:self.pointer + amount]

    def read(self, amount=1):
        ret = self.raw_text[self.pointer:self.pointer + amount]
        self.pointer += amount
        return ret

    def read_numeric(self):
        ret_str = ""
        while self.has_more_tokens() and self.peek().isdigit():
            ret_str += self.read()
        return ret_str

    def read_text(self):
        ret_str = ""
        while self.has_more_tokens() and self.peek() not in (WHITESPACE + SYMBOLS):
            ret_str += self.read()
        return ret_str

    def strip_whitespace(self):
        while self.has_more_tokens() and self.peek() in WHITESPACE:
            self.pointer += 1

    def read_string(self):
        ret_str = ""
        boundry_marker = self.read()
        while self.has_more_tokens() and self.peek() != boundry_marker:
            ret_str += self.read()
        self.pointer += 1  # advance after the marker
        return ret_str

    def has_more_tokens(self) -> bool:
        """Do we have more tokens in the input?

        Returns:
            bool: True if there are more tokens, False otherwise.
        """
        return self.pointer < len(self.raw_text)

    def advance(self) -> None:
        """Gets the next token from the input and makes it the current token. 
        This method should be called if has_more_tokens() is true. 
        Initially there is no current token.
        """
        first = self.peek()
        if first in SYMBOLS:
            if first == COMMENT_SINGLE[0] and self.peek(len(COMMENT_SINGLE)) == COMMENT_SINGLE:
                while self.has_more_tokens() and self.peek() not in NEWLINE:
                    self.pointer += 1
                self.strip_whitespace()
                self.advance()
                return
            elif first == COMMENT_LONG[0] and self.peek(len(COMMENT_LONG)) == COMMENT_LONG:
                while self.has_more_tokens() and self.peek(len(COMMENT_LONG)) not in COMMENT_LONG[::-1]:
                    self.pointer += 1
                self.pointer += 2
                self.strip_whitespace()
                self.advance()
                return
            else:
                self.pointer += 1
                self.curr_token = first
                self.curr_token_type = SYMBOL
        elif first.isdigit():
            self.curr_token = self.read_numeric()
            self.curr_token_type = INT_CONST
        else:
            if first in STRING_MARKERS:
                self.curr_token = self.read_string()
                self.curr_token_type = STRING_CONST
            else:
                self.curr_token = self.read_text()
                self.curr_token_type = KEYWORD if self.curr_token.upper() in KEYWORDS else IDENTIFIER

        self.strip_whitespace()

    def token_type(self) -> str:
        """
        Returns:
            str: the type of the current token, can be
            "KEYWORD", "SYMBOL", "IDENTIFIER", "INT_CONST", "STRING_CONST"
        """
        return self.curr_token_type

    def keyword(self) -> str:
        """
        Returns:
            str: the keyword which is the current token.
            Should be called only when token_type() is "KEYWORD".
            Can return "CLASS", "METHOD", "FUNCTION", "CONSTRUCTOR", "INT", 
            "BOOLEAN", "CHAR", "VOID", "VAR", "STATIC", "FIELD", "LET", "DO", 
            "IF", "ELSE", "WHILE", "RETURN", "TRUE", "FALSE", "NULL", "THIS"
        """
        # Your code goes here!
        return self.curr_token

    def symbol(self) -> str:
        """
        Returns:
            str: the character which is the current token.
            Should be called only when token_type() is "SYMBOL".
        """
        # Your code goes here!
        return self.curr_token

    def identifier(self) -> str:
        """
        Returns:
            str: the identifier which is the current token.
            Should be called only when token_type() is "IDENTIFIER".
        """
        # Your code goes here!
        return self.curr_token

    def int_val(self) -> int:
        """
        Returns:
            str: the integer value of the current token.
            Should be called only when token_type() is "INT_CONST".
        """
        # Your code goes here!
        return int(self.curr_token)

    def string_val(self) -> str:
        """
        Returns:
            str: the string value of the current token, without the double 
            quotes. Should be called only when token_type() is "STRING_CONST".
        """
        return self.curr_token.strip('"')

    CONVERT = {

        KEYWORD: keyword,
        SYMBOL: symbol,
        IDENTIFIER: identifier,
        INT_CONST: int_val,
        STRING_CONST: string_val

    }

    # -> List[List[typing.Union[str, int], str]]
    def run(self):
        self.pointer = 0
        tokens_list = []
        while self.has_more_tokens():
            self.advance()
            tokens_list.append([JackTokenizer.CONVERT[self.curr_token_type](self), self.curr_token_type])
            # print(self.pointer, self.curr_token)
        return tokens_list
