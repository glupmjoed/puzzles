-- HUMAN RESOURCE MACHINE PROGRAM --

-- [in1 .. 0], ... -> out

    JUMP     b
a:
    OUTBOX
b:
    INBOX
    COPYTO   4
    JUMPN    d
c:
    JUMPZ    a
    OUTBOX
    BUMPDN   4
    JUMP     c
d:
    OUTBOX
    BUMPUP   4
    JUMPZ    a
    JUMP     d
