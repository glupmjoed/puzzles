-- HUMAN RESOURCE MACHINE PROGRAM --

-- max(in1, in2), ... -> out

    JUMP     c
a:
    COPYFROM 0
b:
    OUTBOX
c:
    INBOX
    COPYTO   0
    INBOX
    SUB      0
    JUMPN    a
    ADD      0
    JUMP     b
