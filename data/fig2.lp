Minimize multi-objectives
    OBJ1: Priority = 1 Weight = 1 AbsTol=0 RelTol=0
        t0
    OBJ2: Priority = 0 Weight = 1 AbsTol=0 RelTol=0
        s
subject to
    s <= 3
    u0 - s <= 0
    u0 >= 1
    u0 - b0 >= 1
    maxul0 - u1 >= 0
    maxur0 - u3 >= 0
    u0split - maxul0 - maxur0 = 0
    u0dontsplit - maxul0 >= 0
    u0dontsplit - maxur0 >= 0
    u0 - [ b0 * u0split ] - u0dontsplit + [ b0 * u0dontsplit ] = 0
    t0split - t1 - t4 >= 0
    t0split - t3 - t4 >= 0
    t0dontsplit - t1 - t3 - t4 = 0
    t0 - [ b0 * t0split ] + [ b0 * t0dontsplit ] - t0dontsplit = 1
    u1 = 1
    b1 = 0
    t1 = 3
    u2 = 1
    b2 = 0
    t2 = 0
    u3 = 1
    b3 = 0
    t3 = 2
    u4 - u-1 <= 0
    u4 >= 1
    u4 - b4 >= 1
    maxul4 - u5 >= 0
    maxur4 - u7 >= 0
    u4split - maxul4 - maxur4 = 0
    u4dontsplit - maxul4 >= 0
    u4dontsplit - maxur4 >= 0
    u4 - [ b4 * u4split ] - u4dontsplit + [ b4 * u4dontsplit ] = 0
    t4split - t5 - t12 >= 0
    t4split - t7 - t12 >= 0
    t4dontsplit - t5 - t7 - t12 = 0
    t4 - [ b4 * t4split ] + [ b4 * t4dontsplit ] - t4dontsplit = 1
    u5 = 1
    b5 = 0
    t5 = 2
    u6 = 1
    b6 = 0
    t6 = 0
    u7 - u4 <= 0
    u7 >= 1
    u7 - b7 >= 1
    maxul7 - u8 >= 0
    maxur7 - u10 >= 0
    u7split - maxul7 - maxur7 = 0
    u7dontsplit - maxul7 >= 0
    u7dontsplit - maxur7 >= 0
    u7 - [ b7 * u7split ] - u7dontsplit + [ b7 * u7dontsplit ] = 0
    t7split - t8 - t11 >= 0
    t7split - t10 - t11 >= 0
    t7dontsplit - t8 - t10 - t11 = 0
    t7 - [ b7 * t7split ] + [ b7 * t7dontsplit ] - t7dontsplit = 1
    u12 = 1
    b12 = 0
    t12 = 1
    u8 = 1
    b8 = 0
    t8 = 3
    u9 = 1
    b9 = 0
    t9 = 0
    u10 = 1
    b10 = 0
    t10 = 5
    u11 = 1
    b11 = 0
    t11 = 1
Integers
    s u0 t0 u0split t0split u0dontsplit t0split maxul0 maxur0 u1 t1 u2 t2 u3 t3 u4 t4 u4split t4split u4dontsplit t4split maxul4 maxur4 u5 t5 u6 t6 u7 t7 u7split t7split u7dontsplit t7split maxul7 maxur7 u12 t12 u8 t8 u9 t9 u10 t10 u11 t11
binary
    b0 b1 b2 b3 b4 b5 b6 b7 b12 b8 b9 b10 b11
