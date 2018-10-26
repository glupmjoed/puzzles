-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 * in2, ... -> out

    COPYFROM 9
    COPYTO   8
    COPYTO   2
    BUMPUP   2
    BUMPUP   2 -- 2 -> r2
    ADD      2
    COPYTO   4 -- 4 -> r4
    JUMP     c
a:
    ADD      6
b:
    ADD      8 -- add multiples of 4 * a1
    OUTBOX
    COPYFROM 9
    COPYTO   8
c:
    INBOX
    COPYTO   6 -- a1 -> r6
    INBOX
    SUB      4
    JUMPN    d
    COPYTO   7 -- a2 >= 4
    COPYFROM 6
    ADD      6
    ADD      6
    ADD      6
    COPYTO   8 -- 4 * a1 -> r8
    COPYFROM 7
    SUB      4
    JUMPN    d
    COPYTO   7 -- a2 >= 8
    COPYFROM 8
    ADD      8
    COPYTO   8 -- 8 * a1 -> r8
    COPYFROM 7
    JUMP     g -- a2%4 == 0 || a2%4 == 1
d:
    ADD      2 -- a2%4 < 4
    JUMPN    f
    JUMPZ    e -- a2%4 == 2 || a2%4 == 3
    COPYFROM 6 -- a2%4 == 3
    ADD      6
    JUMP     a
e:
    COPYFROM 6 -- a2%4 == 2
    JUMP     a
f:
    ADD      2 -- a2%4 == 0 || a2%4 == 1
g:
    JUMPZ    b
    COPYFROM 6 -- a2%4 == 1
    JUMP     b
