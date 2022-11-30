-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 % in2, ... -> out

    JUMP     b
a:
    ADD      2
    OUTBOX
b:
    INBOX
    COPYTO   0
    INBOX
    COPYTO   2
    COPYFROM 0
c:
    SUB      2
    JUMPN    a
    JUMP     c
