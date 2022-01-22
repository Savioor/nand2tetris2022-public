"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""


class Code:
    """Translates Hack assembly language mnemonics into binary codes."""

    @staticmethod
    def dest(mnemonic: str) -> str:
        """
        Args:
            mnemonic (str): a dest mnemonic string.

        Returns:
            str: 3-bit long binary code of the given mnemonic.
        """
        # Your code goes here!
        ret = "1" if "A" in mnemonic else "0"
        ret += "1" if "D" in mnemonic else "0"
        ret += "1" if "M" in mnemonic else "0"
        return ret

    # all mnemonics hardcoded
    hard_coded_translation = {}
    for t in ["A", "M"]:
        hard_coded_translation.update({
            "0": "101010",
            "1": "111111",
            "-1": "111010",
            "D": "001100",
            "!D": "001101",
            t: "110000",
            "!"+t: "110001",
            "-D": "001111",
            "-"+t: "110011",
            "D+1": "011111",
            t+"+1": "110111",
            "D-1": "001110",
            t + "-1": "110010",
            "D+"+t: "000010",
            "D-"+t: "010011",
            t+"-D": "000111",
            "D&" + t: "000000",
            "D|" + t: "010101"
        })

    keys = list(hard_coded_translation.keys())
    for item in keys:
        if len(item) == 3 and item[1] != "-":
            hard_coded_translation[item[::-1]] = hard_coded_translation[item]
    for t in ["A", "M"]:
        hard_coded_translation.update({
            t + "<<": "100000",
            t + ">>": "000000",
            "D<<": "110000",
            "D>>": "010000"
        })

    @staticmethod
    def comp(mnemonic: str) -> str:
        """
        Args:
            mnemonic (str): a comp mnemonic string.

        Returns:
            str: 7-bit long binary code of the given mnemonic.
        """
        ret = "1" if "M" in mnemonic else "0"
        return ret + Code.hard_coded_translation[mnemonic]

    @staticmethod
    def jump(mnemonic: str) -> str:
        """
        Args:
            mnemonic (str): a jump mnemonic string.

        Returns:
            str: 3-bit long binary code of the given mnemonic.
        """
        if len(mnemonic) != 3:
            return "000"
        if mnemonic == "JMP":
            return "111"
        if mnemonic == "JNE":
            return "101"
        if mnemonic == "JEQ":
            return "010"
        j1 = "1" if "L" in mnemonic else "0"
        j2 = "1" if "E" in mnemonic else "0"
        j3 = "1" if "G" in mnemonic else "0"
        return j1 + j2 + j3
