"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing
from copy import deepcopy
from typing import List
from Debug import debug


A_COMMAND = "A_COMMAND"
C_COMMAND = "C_COMMAND"
L_COMMAND = "L_COMMAND"


class Parser:
    """Encapsulates access to the input code. Reads and assembly language 
    command, parses it, and provides convenient access to the commands 
    components (fields and symbols). In addition, removes all white space and 
    comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Opens the input file and gets ready to parse it.

        Args:
            input_file (typing.TextIO): input file.
        """
        # Your code goes here!
        # A good place to start is:
        self.input_lines: List[str] = []
        self.pointer: int = 0
        self.cur_command: str
        self.mnemonics_list: List[list] = []

        input_lines = input_file.read().splitlines()
        for line in input_lines:
            line = line.split("//")[0]
            if line.startswith("//"):
                continue
            line = line.replace(" ", "").replace("\t", "").replace("\n", "").replace("\r", "")
            if len(line) == 0:
                continue
            self.input_lines.append(line)

        if len(self.input_lines) == 0:
            self.mnemonics_list = []
            return

        mnemonics: List[str, str, str, str, str]
        while self.has_more_commands():
            self.cur_command = self.input_lines[self.pointer]
            mnemonics = ["0", "0", "0", "0", "0"]
            command = self.command_type()
            if command == C_COMMAND:
                mnemonics[0] = self.dest()
                mnemonics[1] = self.comp()
                mnemonics[2] = self.jump()
                mnemonics[-1] = command
            else:
                mnemonics[3] = self.symbol()
                mnemonics[-1] = command
            self.mnemonics_list.append(deepcopy(mnemonics))
            debug(self.cur_command)
            debug(mnemonics)
            self.pointer += 1

    def has_more_commands(self) -> bool:
        """Are there more commands in the input?

        Returns:
            bool: True if there are more commands, False otherwise.
        """
        # Your code goes here!
        if len(self.input_lines) > self.pointer:
            return True
        return False

    def advance(self) -> None:
        """Reads the next command from the input and makes it the current command.
        Should be called only if has_more_commands() is true.
        """
        # Your code goes here!
        if self.has_more_commands():
            self.pointer += 1
            self.cur_command = self.input_lines[self.pointer]

    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current command:
            "A_COMMAND" for @Xxx where Xxx is either a symbol or a decimal number
            "C_COMMAND" for dest=comp;jump
            "L_COMMAND" (actually, pseudo-command) for (Xxx) where Xxx is a symbol
        """
        # Your code goes here!
        if self.cur_command[0] == "@":
            return A_COMMAND
        elif self.cur_command.find("=") > 0 or self.cur_command.find(";") > 0:
            return C_COMMAND
        elif self.cur_command[0] == "(" and self.cur_command[-1] == ")":
            return L_COMMAND
        else:
            return "0"

    def symbol(self) -> str:
        """
        Returns:
            str: the symbol or decimal Xxx of the current command @Xxx or
            (Xxx). Should be called only when command_type() is "A_COMMAND" or 
            "L_COMMAND".
        """
        # Your code goes here!
        # if self.command_type() == "C_COMMAND" :
        if self.cur_command[0] == "@":
            return self.cur_command[1:]
        return self.cur_command[1:-1]

    def dest(self) -> str:
        """
        Returns:
            str: the dest mnemonic in the current C-command. Should be called 
            only when commandType() is "C_COMMAND".
        """
        # Your code goes here!
        #        if self.command_type() == "C_COMMAND":

        i = self.cur_command.find("=")
        if i == -1:
            return "0"
        return self.cur_command[0:i]

    def comp(self) -> str:
        """
        Returns:
            str: the comp mnemonic in the current C-command. Should be called 
            only when commandType() is "C_COMMAND".
        """
        # Your code goes here!
        #        if self.command_type() == "C_COMMAND":
        i = self.cur_command.find("=")
        j = self.cur_command.find(";")
        if j == -1 and i + 1 < len(self.cur_command):
            return self.cur_command[i + 1:]
        if j - i - 1 > 0:
            return self.cur_command[i + 1: j]
        return "0"

    def jump(self) -> str:
        """
        Returns:
            str: the jump mnemonic in the current C-command. Should be called 
            only when commandType() is "C_COMMAND".
        """
        # Your code goes here!
        i = self.cur_command.find(";")
        if 0 < i < len(self.cur_command):
            return self.cur_command[i+1:len(self.cur_command)]
        return "0"
