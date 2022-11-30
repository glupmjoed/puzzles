-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 (where in1 == 0), ... -> out

    JUMP     b
a:
    OUTBOX
b:
    INBOX
    JUMPZ    a
    JUMP     b
