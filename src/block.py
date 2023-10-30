#!/usr/bin/python3

"""\
This module consists of the BasicBlock class to represent a single basic block
in the CFG of a GPU kernel.
"""

from __future__ import annotations

import re

from src import pattern

class BasicBlock():
    """
    A class that represents a basic block in the CFG
    """
    def __init__(self, num: int, wcet: int = 0) -> None:
        self.num: int = num
        self.wcet: int = wcet
        self.parent: int = -1
        self.bsb: int = -1
        self.reconv: int = -1
        self.__successors: set[int] = set()
        self.__insts: dict[int, str] = {}

    def add_instruction(self, pc: int, inst: str) -> None:
        """
        Map an instruction to this basic block
        """
        self.__insts[pc] = inst

    def add_successor(self, bb: int) -> None:
        """
        Map a successor node to this basic block
        """
        self.__successors.add(bb)

    def successors(self) -> list[int]:
        """
        Returns the basic block successor set
        """
        return sorted(self.__successors)

    def instructions(self) -> dict[int, str]:
        """
        Returns the basic block instructions and their PCs
        """
        return self.__insts

    def is_branch(self) -> bool:
        """
        Determine if control-flow can branch out to multiple basic blocks from
        this basic block
        """
        return self.reconv != -1

    def is_bsb(self) -> bool:
        """
        Determine if the basic block is a branch serialization block
        """
        first_inst = list(self.__insts.values())[0]
        return bool(re.search(
            pattern.BSB_START_INST,
            first_inst
        ))

    def is_reconv(self) -> bool:
        """
        Determine if the basic block contains a reconvergence point for a
        prior branch
        """
        first_inst = list(self.__insts.values())[0]
        return bool(re.search(
            pattern.RECONV_START_INST,
            first_inst
        ))

    def has_else_path(self) -> bool:
        """
        Determine if the basic block has an else path, given by whether or not
        it has a defined branch serialization block
        """
        assert self.is_branch()
        return self.bsb != -1
