"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing
from copy import deepcopy

C_ARITHMETIC = "C_ARITHMETIC"
C_PUSH, C_POP, C_LABEL, C_GOTO, C_IF, \
C_FUNCTION, C_RETURN, C_CALL = \
    "C_PUSH", "C_POP", "C_LABEL", "C_GOTO", "C_IF", \
    "C_FUNCTION", "C_RETURN", "C_CALL"
ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT, SHIFT_LEFT, SHIFT_RIGHT = \
    "add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not", "shiftleft", "shiftright"
ARITHMETIC = {ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT, SHIFT_LEFT, SHIFT_RIGHT}


class Parser:
    """
    Handles the parsing of a single .vm file, and encapsulates access to the
    input code. It reads VM commands, parses them, and provides convenient 
    access to their components. 
    In addition, it removes all white space and comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Gets ready to parse the input file.

        Args:
            input_file (typing.TextIO): input file.
        """
        # Your code goes here!
        # A good place to start is:
        # input_lines = input_file.read().splitlines()
        self.input_lines: typing.List[str] = []
        self.pointer: int = 0
        self.cur_command: str
        self.args_list: list = []

        if input_file is None:
            return

        input_lines = input_file.read().splitlines()
        for line in input_lines:
            line = line.split("//")[0]
            if line.startswith("//"):
                continue
            line = line.replace("\t", " ").replace("\n", " ").replace("\r", " ")
            if len(line) == 0:
                continue
            line = ' '.join(line.split())
            self.input_lines.append(line)

        if len(self.input_lines) == 0:
            return
        else:
            self.cur_command = self.input_lines[self.pointer]

        args_pair: typing.List

        while self.has_more_commands():
            args_pair = ["", "", None]
            args_pair[0] = self.command_type()

            if args_pair[0] != C_RETURN:
                args_pair[1] = self.arg1()
            if args_pair[0] in [C_PUSH, C_POP, C_FUNCTION, C_CALL]:
                args_pair[2] = self.arg2()

            self.args_list.append(deepcopy(args_pair))
            self.advance()

    def has_more_commands(self) -> bool:
        """Are there more commands in the input?

        Returns:
            bool: True if there are more commands, False otherwise.
        """
        # Your code goes here!
        return len(self.input_lines) > self.pointer

    def advance(self) -> None:
        """Reads the next command from the input and makes it the current 
        command. Should be called only if has_more_commands() is true. Initially
        there is no current command.
        """
        # Your code goes here!
        self.pointer += 1
        if self.has_more_commands():
            self.cur_command = self.input_lines[self.pointer]

    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current VM command.
            "C_ARITHMETIC" is returned for all arithmetic commands.
            For other commands, can return:
            "C_PUSH", "C_POP", "C_LABEL", "C_GOTO", "C_IF", "C_FUNCTION",
            "C_RETURN", "C_CALL".
        """
        # Your code goes here!
        command: str = self.cur_command.split(" ")[0]
        if command in ARITHMETIC:
            return C_ARITHMETIC
        elif command == "push":
            return C_PUSH
        elif command == "pop":
            return C_POP
        """ TODO complete the commands"""

    def arg1(self) -> str:
        """
        Returns:
            str: the first argument of the current command. In case of 
            "C_ARITHMETIC", the command itself (add, sub, etc.) is returned. 
            Should not be called if the current command is "C_RETURN".
        """
        if self.command_type() == C_ARITHMETIC:
            return self.cur_command.split(" ")[0]
        elif self.command_type() in {C_PUSH, C_POP}:
            return self.cur_command.split(" ")[1]
        pass

    def arg2(self) -> int:
        """
        Returns:
            int: the second argument of the current command. Should be
            called only if the current command is "C_PUSH", "C_POP", 
            "C_FUNCTION" or "C_CALL".
        """
        # Your code goes here!
        return int(self.cur_command.split(" ")[2])


if __name__ == '__main__':
    Parser(None)
