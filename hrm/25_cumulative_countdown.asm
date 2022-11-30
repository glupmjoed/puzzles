-- HUMAN RESOURCE MACHINE PROGRAM --

-- binom(in1 + 1, 2), ... -> out

    JUMP     c
a:
    COPYFROM 1
b:
    OUTBOX
c:
    INBOX
    JUMPZ    b
    COPYTO   0
d:
    COPYTO   1
    BUMPDN   0
    JUMPZ    a
    ADD      1
    JUMP     d
