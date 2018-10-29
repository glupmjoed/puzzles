-- HUMAN RESOURCE MACHINE PROGRAM --

-- abs(in1), ... -> out

    JUMP     c
a:
    COPYTO   0
    SUB      0
    SUB      0
b:
    OUTBOX
c:
    INBOX
    JUMPN    a
    JUMP     b
