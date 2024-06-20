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
    def __init__(
        self,
        num: int,
        wcet: int = 0,
        other: BasicBlock | None = None
    ) -> None:
        self.num: int = num
        self.wcet: int = wcet
        self.parent: int = -1
        self.bsb: int = -1
        self.reconv: int = -1
        self.is_a_bsb: bool = False
        self.is_a_reconv: bool = False
        self.__successors: set[int] = set()
        self.__predecessors: set[int] = set()
        self.__insts: dict[int, str] = {}

        if other:
            self.wcet = other.wcet
            self.__insts = other.instructions()

    def __lt__(self, other: BasicBlock):
        return self.num < other.num

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

    def remove_successor(self, bb: int) -> None:
        """
        Remove a successor node of this basic block
        """
        assert bb in self.__successors
        self.__successors.remove(bb)

    def successors(self) -> list[int]:
        """
        Returns the basic block successor set
        """
        return sorted(self.__successors)

    def add_predecessor(self, bb: int) -> None:
        """
        Map a predecessor node to this basic block
        """
        self.__predecessors.add(bb)

    def remove_predecessor(self, bb: int) -> None:
        """
        Remove a predecessor node of this basic block
        """
        assert bb in self.__predecessors
        self.__predecessors.remove(bb)

    def predecessors(self) -> list[int]:
        """
        Returns the basic block predecessor set
        """
        return sorted(self.__predecessors)

    def immediate_successor(self) -> int:
        """
        Returns the immediate successor to a node, correponding to the next
        basic block that appears in program sequence
        """
        non_loop_successors = [i for i in self.successors() if i > self.num]
        if len(non_loop_successors) == 0:
            return self.num
        return min(non_loop_successors)

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
        if len(self.__insts) == 0:
            return self.is_a_bsb
        first_inst = list(self.__insts.values())[0]
        return bool(re.search(
            pattern.INST_START_BSB,
            first_inst
        ))

    def is_reconv(self) -> bool:
        """
        Determine if the basic block contains a reconvergence point for a
        prior branch
        """
        if len(self.__insts) == 0:
            return self.is_a_reconv
        # In some cases, the conditional branch that causes divergence is not
        # based on the execution mask and the reconvergence block does not
        # restore the execution mask. We aim to detect that here.
        if len(self.__predecessors) > 1 and not self.is_bsb():
            return True
        first_inst = list(self.__insts.values())[0]
        return bool(re.search(
            pattern.INST_START_RECONV,
            first_inst
        ))

    def has_else_path(self) -> bool:
        """
        Determine if the basic block has an else path, given by whether or not
        it has a defined branch serialization block
        """
        assert self.is_branch()
        return self.bsb != -1
