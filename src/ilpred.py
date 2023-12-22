#! /usr/bin/python3

import sys
import os
from readcfg import readcfg

def isbranchnode(cfg, n):
    # is n a branch node?
    return (len(cfg[n][1]) > 1)

def isjoinnode(cfg, n):
    # is n a join node?
    # it is if and only if two nodes have it as neighbour

    s = set()
    for i in range(len(cfg)):
        if n in cfg[i][1]:
            s.add(i)

    if(len(s) == 2):
        return True
    else:
        return False

def parent(cfg, n):
    # the branch node in whose l(i) or r(i) this node is
    # None if and only if n is the root node.
    # Warning: if n is a join node, its parent is returned as the
    #          branch node for which it is the join node.

    if n == 0:
        return None

    while True:
        for i in range(len(cfg)):
            if n in cfg[i][1]:
                if isbranchnode(cfg, i):
                    return i
                else:
                    n = i
                    break

def joinofbranchnode(cfg, b):
    # return the `join' node of the branch node b
    s = list() # a stack, really
    s.append(b)
    curr = b
    while(True):
        ncurr = cfg[curr][1][0] # a neighbour, i.e., "child", of curr
        if isbranchnode(cfg, ncurr):
            s.append(ncurr)
        if isjoinnode(cfg, ncurr):
            p = s.pop()
            if p == b:
                return ncurr
        curr = ncurr

def l(cfg, n):
    # the l(n) set
    l = set()
    if not isbranchnode(cfg, n):
        return(l) # empty set

    j = joinofbranchnode(cfg, n)
    curr = cfg[n][1][0] # left child
    while curr != j:
        l.add(curr)
        if isbranchnode(cfg, curr):
            curr = joinofbranchnode(cfg, curr)
        else:
            curr = cfg[curr][1][0] # 1st "child"

    return l

def r(cfg, n):
    # the r(n) set
    r = set()
    if not isbranchnode(cfg, n):
        return(r) # empty set
    j = joinofbranchnode(cfg, n)
    curr = cfg[n][1][1] # right child
    while curr != j:
        r.add(curr)
        if isbranchnode(cfg, curr):
            curr = joinofbranchnode(cfg, curr)
        else:
            curr = cfg[curr][1][0] # 1st "child"

    return r

def dumpilp(cfg, outfile, m):
    o = open(outfile, "w")
    o.write("Minimize multi-objectives\n")
    o.write("    OBJ1: Priority = 1 Weight = 1 AbsTol=0 RelTol=0\n")
    o.write("        t0\n")
    o.write("    OBJ2: Priority = 0 Weight = 1 AbsTol=0 RelTol=0\n")
    o.write("        s\n")
    o.write("subject to\n")
    o.write("    s <= " + m + "\n")
    o.write("    u0 - s <= 0\n")

    # constraints for each node in CFG
    for i in range(len(cfg)):
        if isbranchnode(cfg, i):
            # (a) ui <= u(parenti)
            if i > 0:
                o.write("    u"+str(i)+" - u"+str(parent(cfg,i))+" <= 0\n")
            #else i == 0 --- already addressed above outside for loop

            # (b) ui >= 1
            o.write("    u"+str(i)+" >= 1\n")

            # (c) ui = 1 ==> bi = 0
            o.write("    u"+str(i)+" - b"+str(i)+" >= 1\n")

            # (d) bi = 1 ==> ui = max{u(li)} + max{u(ri)}
            #     bi = 0 ==> ui = max{u(li), u(ri)}
            li = l(cfg, i)
            ri = r(cfg, i)
            for j in li:
                o.write("    maxul"+str(i)+" - u"+str(j)+" >= 0\n")
            for j in ri:
                o.write("    maxur"+str(i)+" - u"+str(j)+" >= 0\n")
            o.write("    u"+str(i)+"split - maxul"+str(i)+" - maxur"+str(i)+" = 0\n")
            o.write("    u"+str(i)+"dontsplit - maxul"+str(i)+" >= 0\n")
            o.write("    u"+str(i)+"dontsplit - maxur"+str(i)+" >= 0\n")
            o.write("    u"+str(i)+" - [ b"+str(i)+" * u"+str(i)+"split ] - u"+str(i)+"dontsplit + [ b"+str(i)+" * u"+str(i)+"dontsplit ] = 0\n")

            # (e) bi = 1 ==> ti = ei + max{t(li), t(ri)}
            #     bi = 0 ==> ti = ei + t(li) + t(ri)
            o.write("    t"+str(i)+"split")
            for j in li:
                o.write(" - t"+str(j))
            o.write(" >= 0\n")
            o.write("    t"+str(i)+"split")
            for j in ri:
                o.write(" - t"+str(j))
            o.write(" >= 0\n")

            o.write("    t"+str(i)+"dontsplit")
            for j in li:
                o.write(" - t"+str(j))
            for j in ri:
                o.write(" - t"+str(j))
            o.write(" = 0\n")
            o.write("    t"+str(i)+" - [ b"+str(i)+" * t"+str(i)+"split ] + [ b"+str(i)+" * t"+str(i)+"dontsplit ] - t"+str(i)+"dontsplit = "+str(cfg[i][0])+"\n")

        else:
            o.write("    u"+str(i)+" = 1\n")
            o.write("    b"+str(i)+" = 0\n")
            o.write("    t"+str(i)+" = "+str(cfg[i][0])+"\n")
    o.write("Integers\n")
    o.write("    s")
    for i in range(len(cfg)):
        o.write(" u"+str(i)+" t"+str(i))
        if isbranchnode(cfg, i):
            o.write(" u"+str(i)+"split")
            o.write(" t"+str(i)+"split")
            o.write(" u"+str(i)+"dontsplit")
            o.write(" t"+str(i)+"dontsplit")
            o.write(" maxul"+str(i))
            o.write(" maxur"+str(i))
    o.write("\n")
    o.write("binary\n   ")
    for i in range(len(cfg)):
        o.write(" b"+str(i))
    o.write("\n")
    o.close()

def main():
    if len(sys.argv) != 4:
        print('Usage: ', end = '')
        print(sys.argv[0], end = ' ')
        print('<cfg-input-file> <ilp-output-file> <max # SIMD units>')
        return

    cfg = readcfg(sys.argv[1])
    #print(cfg)

    #for j in range(len(cfg)):
    #    print('parent(',j,'):', parent(cfg,j))

    #print('join of(1):', joinofbranchnode(cfg,1))
    #print('join of(6):', joinofbranchnode(cfg,6))
    #print('join of(0):', joinofbranchnode(cfg,0))

    #print('l(0):', l(cfg, 0));
    #print('l(6):', l(cfg, 6));
    #print('r(0):', r(cfg, 0));
    #print('r(6):', r(cfg, 6));

    dumpilp(cfg, sys.argv[2], sys.argv[3])
    print("ILP dumped to", sys.argv[2])

if __name__ == '__main__':
    main()