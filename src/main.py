#!/usr/bin/python3

from graph import *
from alg.algorithm import *
from alg.dp_algorithm import *

if __name__ == '__main__':
    cfg = {}
    weights = {}
    with open("data/input3.graph") as fi:
        for line in fi.readlines():
            data = [int(i) for i in line.split()]
            cfg[data[0]] = []
            for v in data[2:]:
                cfg[data[0]].append(v)
            weights[data[0]] = data[1]

    g = Graph(cfg, weights)
    a = DPAlgorithm(g, 3)
    selections = sorted(a.solve())

    print(f"{selections}")