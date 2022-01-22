"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
from Parser import *
from Parser import C_PUSH, C_POP

# ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT = \
#     "add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"


ARITHMETIC = {ADD: "+", SUB: "-", EQ: "JEQ", LT: "JLT", GT: "JGT", AND: "&", OR: "|",
              NOT: "!", NEG: "-", SHIFT_LEFT: "<<", SHIFT_RIGHT: ">>"}


class CodeWriter:
    """Translates VM commands into Hack assembly code."""

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Initializes the CodeWriter.

        Args:
            output_stream (typing.TextIO): output stream.
        """
        # Your code goes here!
        self.label_counter = 0
        self.output_stream = output_stream

    def set_file_name(self, filename: str) -> None:
        """Informs the code writer that the translation of a new VM file is 
        started.

        Args:
            filename (str): The name of the VM file.
        """
        # Your code goes here!
        pass
        # self.output_stream.name = filename

    def write_arithmetic(self, command: str) -> None:
        """Writes the assembly code that is the translation of the given 
        arithmetic command.

        Args:
            command (str): an arithmetic command.
        """

        # Your code goes here!
        assembly = ""
        self.output_stream.write(f"// {command}\n")
        if command in [ADD, SUB, AND, OR]:
            assembly: str = \
                f"@SP\n" \
                f"A = M - 1\n" \
                "A = A - 1\n" \
                f"D = M\n" \
                f"A = A + 1\n" \
                f"D = D {ARITHMETIC[command]} M\n" \
                "A = A - 1\n" \
                "M = D\n"\
                f"@SP\n" \
                f"M = M - 1\n"
        elif command in [EQ, LT, GT]:
            self.label_counter += 1
            assembly = \
                "@SP\n" \
                "AM = M - 1\n" \
                "D = M // D HOLDS Y\n" \
                f"@YLE0{self.label_counter}\n" \
                "D; JLE\n" \
                f"@YGT0{self.label_counter}\n" \
                "D; JGT\n" \
                \
                f"(YLE0{self.label_counter})\n" \
                "@SP\n" \
                "A = M - 1\n" \
                "D = M // D HOLDS X\n" \
                f"@BOTH{self.label_counter} // IF BOTH OF THEM ARE LESS OR EQUAL TO 0\n" \
                "D; JLE\n" \
                f"@TRUE{self.label_counter} // IF Y < 0  AND X > 0\n" \
                f"D; {ARITHMETIC[command]}\n" \
                f"@NOTTRUE{self.label_counter}\n" \
                "0;JMP\n" \
                \
                f"(YGT0{self.label_counter})\n" \
                "@SP\n" \
                "A = M - 1\n" \
                "D = M // D HOLDS X\n" \
                f"@BOTH{self.label_counter} // IF BOTH OF THEM ARE BIGGER THEN 0\n" \
                "D; JGT\n" \
                f"@TRUE{self.label_counter} // IF Y > 0 AND X < 0\n" \
                f"D; {ARITHMETIC[command]}\n" \
                f"@NOTTRUE{self.label_counter}\n" \
                "0; JMP\n" \
                \
                "//D HOLDS X\n" \
                \
                f"(BOTH{self.label_counter})\n" \
                "@SP\n" \
                "A = M // A HOLDS Y\n" \
                "A = M\n" \
                "D = D - A\n" \
                f"@TRUE{self.label_counter}\n" \
                f"D; {ARITHMETIC[command]}\n" \
                f"@NOTTRUE{self.label_counter}\n" \
                "0;JMP\n" \
                \
                f"(NOTTRUE{self.label_counter})\n" \
                "@SP\n" \
                "A = M -1\n" \
                "M = 0\n" \
                f"@ENDTRUE{self.label_counter}\n" \
                "0; JMP\n" \
                \
                f"(TRUE{self.label_counter})\n" \
                "@SP\n" \
                "A = M - 1\n" \
                "M = -1\n" \
                f"(ENDTRUE{self.label_counter})\n"
        elif command in [NEG, NOT]:
            assembly = \
                f"@SP\n" \
                f"A = M - 1\n" \
                f"M = {ARITHMETIC[command]} M\n"
        elif command in [SHIFT_RIGHT, SHIFT_LEFT]:
            assembly = \
                f"@SP\n" \
                f"A = M - 1\n" \
                f"M = M{ARITHMETIC[command]}\n"

        self.output_stream.write(assembly)

    segment_translator = {

        "local": "LCL",
        "argument": "ARG",
        "this": "THIS",
        "that": "THAT"

    }

    segment_hardcoded_translator = {
        "pointer": "3",
        "static": "16",
        "temp": "5"
    }

    def write_push_pop(self, command: str, segment: str, index: int) -> None:
        """
            Writes
            the
            assembly
            code
            that is the
            translation
            of
            the
            given
        command, where
        command is either
        C_PUSH or C_POP.

        Args:
        command(str): "C_PUSH" or "C_POP".
        segment(str): the
        memory
        segment
        to
        operate
        on.
        index(int): the
        index in the
        memory
        segment.

    """

        # Your code goes here!
        if command == C_PUSH:
            # -- push --
            # @index
            # D = A
            # @start_of_target
            # A = M + D
            # D = M
            # @SP
            # M = M - 1
            # A = M + 1
            # M = D
            self.output_stream.write(f"// push {segment} {index}\n")

            if segment == "constant":
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n")
            elif segment in ["static", "pointer", "temp"]:
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n"
                                         f"@{CodeWriter.segment_hardcoded_translator[segment]}\n"
                                         f"A = A + D\n"
                                         f"D = M\n")
            else:
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n"
                                         f"@{CodeWriter.segment_translator[segment]}\n"
                                         f"A = M + D\n"
                                         f"D = M\n")

            # Now D holds the value to push
            self.output_stream.write(f"@SP\n"
                                     f"M = M + 1\n"
                                     f"A = M - 1\n"
                                     f"M = D\n")
        elif command == C_POP:
            # -- pop --
            # @SP
            # M = M - 1
            # A = M
            # D = M
            # @start_of_target
            # D = A
            # @index
            # A = A + D
            # M = D
            self.output_stream.write(f"// pop {segment} {index}\n")

            if segment == "constant":
                self.output_stream.write("@SP\n"
                                         "M = M - 1\n")
                return
            elif segment in ["static", "pointer", "temp"]:
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n"
                                         f"@{CodeWriter.segment_hardcoded_translator[segment]}\n"
                                         f"D = A + D\n")
            else:
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n"
                                         f"@{CodeWriter.segment_translator[segment]}\n"
                                         f"D = M + D\n")

            # D should hold the value to pop into

            self.output_stream.write(f"@R13\n"
                                     f"M = D\n"
                                     f"@SP\n"
                                     f"M = M - 1\n"
                                     f"A = M\n"
                                     f"D = M\n"
                                     f"@R13\n"
                                     f"A = M\n"
                                     f"M = D\n")

    def close(self) -> None:
        """
        Closes
        the
        output
        file.
        """
        self.output_stream.flush()
        self.output_stream.close()
"""
new code maybe
@SP
AM = M - 1
D = M // D HOLDS Y
@YLT0{self.label_counter}
D; JLE
@YGT0{self.label_counter}
D; JGT

(YLE0{self.label_counter})
@SP
AM = M - 1
D = M // D HOLDS X
@BOTH{self.label_counter} // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE{self.label_counter} // IF Y < 0  AND X > 0
D; {ARITHMETIC[command]}
@ENDTRUE{self.label_counter}
0;JMP



(YGT0{self.label_counter})
@SP
AM = M - 1
D = M // D HOLDS X
@BOTH{self.label_counter} // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@NOTTRUE{self.label_counter} // IF Y > 0 AND X < 0
D; {ARITHMETIC[command]}
@ENDTRUE{self.label_counter}
0; JMP


//D HOLDS X
(BOTH{self.label_counter})
@SP
A = M - 1 // A HOLDS Y
D = D - A
@TRUE{self.label_counter}
D; {ARITHMETIC[command]}
@NOTTRUE
0;JMP


(DIFF{self.label_counter})
@SP
A = M - 1 // A HOLDS Y
D = D - A
@TRUE{self.label_counter}
D; {ARITHMETIC[command]}
@NOTTRUE{self.label_counter}
0;JMP






(NOTTRUE{self.label_counter})
@SP
A = M -1
M = 0
@ENDTRUE{self.label_counter}
0; JMP
(TRUE{self.label_counter})
@SP
A = M - 1
M = -1
(ENDTRUE{self.label_counter})

"""