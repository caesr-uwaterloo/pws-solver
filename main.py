#!/usr/bin/python3

import argparse
import timeit

from src.graph import *
from src.alg.algorithm import *
from src.alg.brute_force_algorithm import *
from src.alg.dp_algorithm import *
from src.alg.naive_algorithm import *
from src.alg.no_algorithm import *
from src.alg.random_algorithm import *

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
            "-i",
            "--input",
            help="Input file name",
            type=str,
            required=True
        )
    args = parser.parse_args()

    cfg = {}
    weights = {}
    with open(args.input) as fi:
        for line in fi.readlines():
            data = [int(i) for i in line.split()]
            cfg[data[0]] = []
            for v in data[2:]:
                cfg[data[0]].append(v)
            weights[data[0]] = data[1]

    g = Graph(cfg, weights)
    algs = [
        NoSplitAlgorithm(g, 3),
        NaiveAlgorithm(g, 3),
        RandomAlgorithm(g, 3),
        DPAlgorithm(g, 3),
        # BruteForceAlgorithm(g, 3)
    ]

    print(f"{f'Algorithm':<25} {f'Analytical WCET':<25} {'Algorithm Runtime (s)'}")
    wcets = []
    a: Algorithm
    for a in algs:
        start = timeit.default_timer()
        sp = a.solve()
        end = timeit.default_timer()
        wcet = a.wcet_outer(splits=sp)
        # wcets.append(str(wcet))
        print(f"{a.name():<25} {wcet:<25} {end-start:0.9f}")
    # print(f"{args.input},{','.join(wcets)}")