"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

from typing import Dict, Tuple
from JackTokenizer import STATIC, FIELD, VAR

LOCAL, ARG = "local", "argument"
TYPE, KIND, INDEX = 0, 1, 2


class SymbolTable:
    """A symbol table that associates names with information needed for Jack
    compilation: type, kind and running index. The symbol table has two nested
    scopes (class/subroutine).
    """

    def __init__(self) -> None:
        """Creates a new empty symbol table."""
        # Your code goes here!
        self.var_index = 0
        self.arg_index = 0
        self.static_index = 0
        self.field_index = 0
        self.class_table: Dict[str:Tuple[str, str, int]] = {}
        self.sub_table: Dict[str:Tuple[str, str, int]] = {}

    def start_subroutine(self) -> None:
        """Starts a new subroutine scope (i.e., resets the subroutine's 
        symbol table).
        """
        self.sub_table = {}
        self.arg_index = 0
        self.var_index = 0
        # Your code goes here!
        pass

    def define(self, name: str, var_type: str, kind: str) -> None:
        """Defines a new identifier of a given name, type and kind and assigns 
        it a running index. "STATIC" and "FIELD" identifiers have a class scope, 
        while "ARG" and "VAR" identifiers have a subroutine scope.

        Args:
            name (str): the name of the new identifier.
            var_type (str): the type of the new identifier.
            kind (str): the kind of the new identifier, can be:
            "STATIC", "FIELD", "ARG", "VAR".
        """
        if kind == STATIC:
            self.class_table[name] = (var_type, kind, self.static_index)
            self.static_index += 1
        elif kind == FIELD:
            self.class_table[name] = (var_type, kind, self.field_index)
            self.field_index += 1
        elif kind == ARG:
            self.sub_table[name] = (var_type, kind, self.arg_index)
            self.arg_index += 1
        elif kind == VAR:
            self.sub_table[name] = (var_type, kind, self.var_index)
            self.var_index += 1

    def var_count(self, kind: str) -> int:
        """
        Args:
            kind (str): can be "STATIC", "FIELD", "ARG", "VAR".

        Returns:
            int: the number of variables of the given kind already defined in 
            the current scope.
        """
        counter: int = 0
        if kind == STATIC or kind == FIELD:
            for (var_type, cur_kind, i) in self.class_table:
                if kind == cur_kind:
                    counter += 1
        else:
            for (var_type, cur_kind, i) in self.sub_table:
                if kind == cur_kind:
                    counter += 1

        return counter

    def kind_of(self, name: str) -> str:
        """
        Args:
            name (str): name of an identifier.

        Returns:
            str: the kind of the named identifier in the current scope, or None
            if the identifier is unknown in the current scope.
        """
        sub_dict = self.sub_table.get(name)
        if sub_dict is not None:
            return sub_dict[KIND]
        class_dict = self.class_table.get(name)
        if class_dict is not None:
            return class_dict[KIND]
        return None

    def type_of(self, name: str) -> str:
        """
        Args:
            name (str):  name of an identifier.

        Returns:
            str: the type of the named identifier in the current scope.
        """
        sub_dict = self.sub_table.get(name)
        if sub_dict is not None:
            return sub_dict[TYPE]
        class_dict = self.class_table.get(name)
        if class_dict is not None:
            return class_dict[TYPE]
        return None

    def index_of(self, name: str) -> int:
        """
        Args:
            name (str):  name of an identifier.

        Returns:
            int: the index assigned to the named identifier.
        """
        sub_dict = self.sub_table.get(name)
        if sub_dict is not None:
            return sub_dict[INDEX]
        class_dict = self.class_table.get(name)
        if class_dict is not None:
            return class_dict[INDEX]
        return None
