-- HUMAN RESOURCE MACHINE PROGRAM --

-- min([in1, in2 .. ~\0]), ... -> out

    JUMP     b
a:
    COPYFROM 0
    OUTBOX
b:
    INBOX
    JUMP     d
c:
    ADD      0
d:
    COPYTO   0
e:
    INBOX
    JUMPZ    a
    SUB      0
    JUMPN    c
    JUMP     e
