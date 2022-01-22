"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

CONST, ARG, LOCAL, STATIC, THIS, THAT, POINTER, TEMP = \
    "constant", "argument", "local", "static", "this", "that", "pointer", "temp"


class VMWriter:
    """
    Writes VM commands into a file. Encapsulates the VM command syntax.
    """

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Creates a new file and prepares it for writing VM commands."""
        # Your code goes here!
        self.output_stream = output_stream
        self.indent = 0

    def increase_indent(self):
        self.indent += 1

    def decr_indent(self):
        self.indent = max(0, self.indent - 1)

    def write_out(self, str):
        self.output_stream.write(str)
        # lines = str.split('\n')
        # end_char = '\n' if str[-1] == '\n' else ''
        # self.output_stream.write(' '*self.indent + ('\n' + ' '*self.indent).join(lines) + end_char)

    def write_comment(self, data):
        self.write_out(f"/* {data} */\n")

    def write_push(self, segment: str, index: int) -> None:
        """Writes a VM push command.

        Args:
            segment (str): the segment to push to, can be "CONST", "ARG", 
            "LOCAL", "STATIC", "THIS", "THAT", "POINTER", "TEMP"
            index (int): the index to push to.
        """
        self.write_out(f"push {segment} {index}\n")

    def write_pop(self, segment: str, index: int) -> None:
        """Writes a VM pop command.

        Args:
            segment (str): the segment to pop from, can be "CONST", "ARG", 
            "LOCAL", "STATIC", "THIS", "THAT", "POINTER", "TEMP".
            index (int): the index to pop from.
        """

        self.write_out(f"pop {segment} {index}\n")

    def write_arithmetic(self, command: str) -> None:
        """Writes a VM arithmetic command.

        Args:
            command (str): the command to write, can be "ADD", "SUB", "NEG", 
            "EQ", "GT", "LT", "AND", "OR", "NOT".
        """
        # Your code goes here!

        self.write_out(f"{command}\n")
        pass

    def write_label(self, label: str) -> None:
        """Writes a VM label command.

        Args:
            label (str): the label to write.
        """
        self.write_out(f"label {label}\n")

    def write_goto(self, label: str) -> None:
        """Writes a VM goto command.

        Args:
            label (str): the label to go to.
        """
        self.write_out(f"goto {label}\n")

    def write_if(self, label: str) -> None:
        """Writes a VM if-goto command.

        Args:
            label (str): the label to go to.
        """
        self.write_out(f"if-goto {label}\n")

    def write_call(self, name: str, n_args: int) -> None:
        """Writes a VM call command.

        Args:
            name (str): the name of the function to call.
            n_args (int): the number of arguments the function receives.
        """
        self.write_out(f"call {name} {n_args}\n")

    def write_function(self, name: str, n_locals: int) -> None:
        """Writes a VM function command.

        Args:
            name (str): the name of the function.
            n_locals (int): the number of local variables the function uses.
        """
        self.write_out(f"function {name} {n_locals}\n")

    def write_return(self) -> None:
        """Writes a VM return command."""
        # Your code goes here!
        self.write_out("return\n")

    def close(self) -> None:
        """Closes the output file."""
        self.output_stream.close()
