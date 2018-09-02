-- HUMAN RESOURCE MACHINE PROGRAM --

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
