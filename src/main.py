#!/usr/bin/python3

from graph import *
from alg.algorithm import *
from alg.brute_force_algorithm import *
from alg.dp_algorithm import *
from alg.naive_algorithm import *
from alg.random_algorithm import *

if __name__ == '__main__':
    cfg = {}
    weights = {}
    with open("data/depth2test00.graph") as fi:
        for line in fi.readlines():
            data = [int(i) for i in line.split()]
            cfg[data[0]] = []
            for v in data[2:]:
                cfg[data[0]].append(v)
            weights[data[0]] = data[1]

    g = Graph(cfg, weights)
    a = BruteForceAlgorithm(g, 3)
    selections = sorted(a.solve())
    print(f"Brute Force: {selections}")
    a = DPAlgorithm(g, 3)
    selections = sorted(a.solve())
    print(f"DP: {selections}")
    a = NaiveAlgorithm(g, 3)
    selections = sorted(a.solve())
    print(f"Naive: {selections}")
    a = RandomAlgorithm(g, 3)
    selections = sorted(a.solve())
    print(f"Random: {selections}")