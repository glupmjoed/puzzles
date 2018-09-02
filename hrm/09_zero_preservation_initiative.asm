-- HUMAN RESOURCE MACHINE PROGRAM --

    JUMP     b
a:
    OUTBOX
b:
    INBOX
    JUMPZ    a
    JUMP     b
