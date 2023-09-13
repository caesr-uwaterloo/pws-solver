#!/usr/bin/python3

import argparse
import timeit

from graph import *
from alg.algorithm import *
from alg.brute_force_algorithm import *
from alg.dp_algorithm import *
from alg.naive_algorithm import *
from alg.no_algorithm import *
from alg.random_algorithm import *

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
        BruteForceAlgorithm(g, 3)
    ]

    # print(f"{f'Algorithm':<25} {f'Analytical WCET':<25} {'Split Points':<40} {'Algorithm Runtime (s)'}")
    print(f"{f'Algorithm':<25} {f'Analytical WCET':<25} {'Algorithm Runtime (s)'}")
    a: Algorithm
    for a in algs:
        start = timeit.default_timer()
        sp = a.solve()
        end = timeit.default_timer()
        wcet = a.wcet_outer(splits=sp)
        # print(f"{a.name():<25} {wcet:<25} {str(sp):<50} {end-start:0.9f}")
        print(f"{a.name():<25} {wcet:<25} {end-start:0.9f}")