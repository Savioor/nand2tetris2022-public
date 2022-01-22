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

    init_called: bool = False
    label_counter = 0

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Initializes the CodeWriter.

        Args:
            output_stream (typing.TextIO): output stream.
        """
        # Your code goes here!
        # self.label_counter = 0
        self.output_stream = output_stream
        self.func_list = []
        self.name = ""

    def set_file_name(self, filename: str) -> None:
        """Informs the code writer that the translation of a new VM file is 
        started.

        Args:
            filename (str): The name of the VM file.
        """
        # Your code goes here!
        self.name = filename

    def write_init(self) -> None:
        if not CodeWriter.init_called:
            CodeWriter.init_called = True
        else:
            return
        self.output_stream.write(f"//init SP\n"
                                 f"@256\n"
                                 f"D = A\n"
                                 f"@SP\n"
                                 f"M = D\n")
        self.output_stream.write(f"//init LCL\n"
                                 f"@256\n"
                                 f"D = A\n"
                                 f"@LCL\n"
                                 f"M = D\n")
        self.output_stream.write(f"//init ARG\n"
                                 f"@256\n"
                                 f"D = A\n"
                                 f"@ARG\n"
                                 f"M = D\n")

        self.write_call("Sys.init", 0)


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
                "M = D\n" \
                f"@SP\n" \
                f"M = M - 1\n"
        elif command in [EQ, LT, GT]:
            CodeWriter.label_counter += 1
            assembly = \
                "@SP\n" \
                "AM = M - 1\n" \
                "D = M // D HOLDS Y\n" \
                f"@YLE0{CodeWriter.label_counter}\n" \
                "D; JLE\n" \
                f"@YGT0{CodeWriter.label_counter}\n" \
                "D; JGT\n" \
 \
                f"(YLE0{CodeWriter.label_counter})\n" \
                "@SP\n" \
                "A = M - 1\n" \
                "D = M // D HOLDS X\n" \
                f"@BOTH{CodeWriter.label_counter} // IF BOTH OF THEM ARE LESS OR EQUAL TO 0\n" \
                "D; JLE\n" \
                f"@TRUE{CodeWriter.label_counter} // IF Y < 0  AND X > 0\n" \
                f"D; {ARITHMETIC[command]}\n" \
                f"@NOTTRUE{CodeWriter.label_counter}\n" \
                "0;JMP\n" \
 \
                f"(YGT0{CodeWriter.label_counter})\n" \
                "@SP\n" \
                "A = M - 1\n" \
                "D = M // D HOLDS X\n" \
                f"@BOTH{CodeWriter.label_counter} // IF BOTH OF THEM ARE BIGGER THEN 0\n" \
                "D; JGE\n" \
                f"@TRUE{CodeWriter.label_counter} // IF Y > 0 AND X < 0\n" \
                f"D; {ARITHMETIC[command]}\n" \
                f"@NOTTRUE{CodeWriter.label_counter}\n" \
                "0; JMP\n" \
 \
                "//D HOLDS X\n" \
 \
                f"(BOTH{CodeWriter.label_counter})\n" \
                "@SP\n" \
                "A = M\n" \
                "A = M // A HOLDS Y\n" \
                "D = D - A\n" \
                f"@TRUE{CodeWriter.label_counter}\n" \
                f"D; {ARITHMETIC[command]}\n" \
                f"@NOTTRUE{CodeWriter.label_counter}\n" \
                "0;JMP\n" \
 \
                f"(NOTTRUE{CodeWriter.label_counter})\n" \
                "@SP\n" \
                "A = M -1\n" \
                "M = 0\n" \
                f"@ENDTRUE{CodeWriter.label_counter}\n" \
                "0; JMP\n" \
 \
                f"(TRUE{CodeWriter.label_counter})\n" \
                "@SP\n" \
                "A = M - 1\n" \
                "M = -1\n" \
                f"(ENDTRUE{CodeWriter.label_counter})\n"
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
            elif segment in ["pointer", "temp"]:
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n"
                                         f"@{CodeWriter.segment_hardcoded_translator[segment]}\n"
                                         f"A = A + D\n"
                                         f"D = M\n")
            elif segment == "static":
                self.output_stream.write(f"@{self.name}.{index}\n"
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
            elif segment in ["pointer", "temp"]:
                self.output_stream.write(f"@{index}\n"
                                         f"D = A\n"
                                         f"@{CodeWriter.segment_hardcoded_translator[segment]}\n"
                                         f"D = A + D\n")
            elif segment == "static":
                self.output_stream.write(f"@{self.name}.{index}\n"
                                         f"D = A\n")
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



    def write_label(self, label: str) -> None:
        if len(self.func_list) == 0:
            self.output_stream.write(f"({self.name}.{label})\n")
        else:
            self.output_stream.write(f"({self.func_list[-1]}${label})\n")


    def write_goto(self, label: str) -> None:
        if len(self.func_list) == 0:
            self.output_stream.write(f"@{self.name}.{label}\n0; JMP\n")
        else:
            self.output_stream.write(f"@{self.func_list[-1]}${label}\n0; JMP\n")

    def write_if(self, label: str) -> None:
        self.output_stream.write("@SP\n"
                                 "AM = M - 1\n"  # assumes that we remove the top element 
                                 "D = M\n"
                                 f"@{self.func_list[-1]}${label}\n"
                                 "D; JNE\n")

    def write_call(self, function_name: str, n_args: int):
        self.output_stream.write(
            f"// call {function_name} {n_args}\n"
        )

        def pseudo_push(mem_loc):
            self.output_stream.write(
                f"@{mem_loc}\n"
                f"D = M\n"
                f"@SP\n"
                f"M = M + 1\n"
                f"A = M - 1\n"
                f"M = D\n"
            )

        self.output_stream.write(
            f"// get ip\n"
            f"@RET_ADDR{CodeWriter.label_counter}\n"
            f"D = A\n"
            
            f"// push data in this order: RET LCL ARG THIS THAT\n"
            f"@SP\n"
            f"M = M + 1\n"
            f"A = M - 1\n"
            f"M = D\n"
        )

        pseudo_push("LCL")
        pseudo_push("ARG")
        pseudo_push("THIS")
        pseudo_push("THAT")

        self.output_stream.write(
            f"// set vals\n"
            f"@SP\n"
            f"D = M\n"  # maybe should be d = m
            f"@{n_args + 5}\n"
            f"D = D - A\n"
            f"@ARG\n"
            f"M = D\n"
            
            f"@SP\n"
            f"D = M\n"
            f"@LCL\n"
            f"M = D\n"
            
            f"@f_{function_name}\n"
            f"0; JMP\n"
        )

        self.output_stream.write(f"(RET_ADDR{CodeWriter.label_counter})\n")
        CodeWriter.label_counter += 1

    def write_return(self):
        # self.func_list.pop()

        self.output_stream.write("// return\n")

        self.output_stream.write("@LCL // frame =  LCL\n"
                                 "D = M\n"
                                 "@R13 // R13 is frame\n"
                                 "M = D\n"
                                 "@5\n"
                                 "A = D - A\n"
                                 "D = M\n"
                                 "@R14\n"
                                 "M = D // sets retAddr to frame - 5\n")
        self.output_stream.write("@SP\n"
                                 "AM = M - 1\n"
                                 "D = M\n"
                                 "@ARG\n"
                                 "A = M // *ARG = pop\n"
                                 "M = D\n"
                                 "@ARG\n"
                                 "D = M\n"
                                 "@SP\n"
                                 "M = D + 1\n")

        def mov(mem_1, mem_2):
            # value at mem1 -> mem2
            self.output_stream.write(
                f"@{mem_1}\n"
                f"A = M\n"
                f"D = M\n"
                f"@{mem_2}\n"
                f"M = D\n"
            )

        self.output_stream.write("@R13\n"
                                 "M = M - 1\n")
        mov("R13", "THAT")
        self.output_stream.write("@R13\n"
                                 "M = M - 1\n")
        mov("R13", "THIS")
        self.output_stream.write("@R13\n"
                                 "M = M - 1\n")
        mov("R13", "ARG")
        self.output_stream.write("@R13\n"
                                 "M = M - 1\n")
        mov("R13", "LCL")

        self.output_stream.write("@R14\n"
                                 "A = M\n"
                                 "0; JMP\n")

    def write_function(self, func_name: str, num_local: int):
        """
        This implementation is memory inefficient but runtime efficient because we unrolled the for loop
        """
        self.func_list.append(func_name)

        self.output_stream.write(
            f"// function {func_name} {num_local}\n"
        )
        self.output_stream.write(
            f"(f_{func_name})\n"
            "// write 0 for every local var\n"
            "@LCL\n"  # todo make sure it works properly
            "A = M\n"
        )
        for _ in range(num_local):
            self.output_stream.write(
                "M = 0\n"
                "A = A + 1\n"
            )
        self.output_stream.write(
            f"@{num_local}\n"
            f"D = A\n"
            f"@SP\n"
            f"M = M + D\n"
        )

    def close(self) -> None:
        """
        Closes
        the
        output
        file.
        """
        self.output_stream.flush()
        self.output_stream.close()



