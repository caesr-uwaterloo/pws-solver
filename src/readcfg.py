#! /usr/bin/python3

import ast

def readcfg(infile):
    # Assumed format:
    # [[e(.), [neighbours]], [e(.), [neighbours]], ...]

    f = open(infile, 'r')
    cfg = ast.literal_eval(f.read())
    f.close()
    return cfg