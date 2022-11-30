-- HUMAN RESOURCE MACHINE PROGRAM --

-- Σ([in1, in2 .. ~\0]), ... -> out

    JUMP     c
a:
    COPYFROM 0
b:
    OUTBOX
c:
    INBOX
    JUMPZ    b
d:
    COPYTO   0
    INBOX
    JUMPZ    a
    ADD      0
    JUMP     d
