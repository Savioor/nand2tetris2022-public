from JackTokenizer import *
import os
import sys
import typing
from CompilationEngine import CompilationEngine
from compare_file import compr

CHECK_TOKENIZER= False

def tokenize_file(input_file: typing.TextIO, output_file: typing.TextIO):
    if CHECK_TOKENIZER:
        tokenizer = JackTokenizer(input_file)
        output_file.write("<tokens>\n")
        while tokenizer.has_more_tokens():
                tokenizer.advance()
                type = tokenizer.token_type()
                if type == STR_TYPE: token = tokenizer.string_val()
                elif type == SYMBOL_TYPE: token=tokenizer.symbol()
                else: token = tokenizer.curr_tok
                output_file.write(f"<{type}> {token} </{type}>\n")
        output_file.write("</tokens>\n")
    else:
        CompilationEngine(input_file, output_file)

if "__main__" == __name__:
    # Parses the input path and calls analyze_file on each input file.
    # This opens both the input and the output files!
    # Both are closed automatically when the code finishes running.
    # If the output file does not exist, it is created automatically in the
    # correct path, using the correct filename.

    R = ".\\p10"


    BlackList = []
    DIRBlackList = "".split()
    alldirs = [d for d in os.listdir(R) if "." not in d and d not in DIRBlackList and "~" not in d]
    alldirs = [""]
    for DN in alldirs:
        for dp,dn,fn in os.walk(R+f"\\{DN}"):#[f"{name}" for name in nmaes]:
            r = dp
            dirname=dp.split("\\")[-1]
            if dirname in DIRBlackList: continue
            if not dirname: continue
            fn = [fnf for fnf in fn if '~' not in fnf]
            nmaes = [f for f in fn if "." in f and f.split(".")[1]=="jack"]
            if not nmaes: continue
            print("\nChecking in", dp[len(R)+1:]+":" )
            for argv in [f"{r}\\{n}" for n in nmaes]:
                leave=False
                for bb in BlackList:
                    if argv.endswith(f"{bb}.jack"):
                        leave=True
                        break
                if leave: continue
                print(" "+ argv.split("\\")[-1], end="")
                argument_path = os.path.abspath(argv)
                if os.path.isdir(argument_path):
                    files_to_assemble = [
                        os.path.join(argument_path, filename)
                        for filename in os.listdir(argument_path)]
                else:
                    files_to_assemble = [argument_path]
                for input_path in files_to_assemble:
                    filename, extension = os.path.splitext(input_path)
                    if extension.lower() != ".jack":
                        continue
                    output_path = filename + "_test.xml"
                    with open(input_path, 'r') as input_file, \
                            open(output_path, 'w') as output_file:
                        tokenize_file(input_file, output_file)

                    with open(filename+".xml.cmp", 'r') as input_file, \
                            open(output_path, 'r') as output_file:
                        c2 = output_file.read().splitlines()
                        c1 = input_file.read().splitlines()
                        compr(c1, c2)