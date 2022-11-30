-- HUMAN RESOURCE MACHINE PROGRAM --

-- sign(in1) != sign(in2), ... -> out

a:
    INBOX
    JUMPN    c
    INBOX
    JUMPN    d
b:
    COPYFROM 4
    OUTBOX
    JUMP     a
c:
    INBOX
    JUMPN    b
d:
    COPYFROM 5
    OUTBOX
    JUMP     a
