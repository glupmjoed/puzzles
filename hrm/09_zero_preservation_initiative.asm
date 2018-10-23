-- HUMAN RESOURCE MACHINE PROGRAM --

-- in (where in == 0), ... -> out

    JUMP     b
a:
    OUTBOX
b:
    INBOX
    JUMPZ    a
    JUMP     b
