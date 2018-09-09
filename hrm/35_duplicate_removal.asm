-- HUMAN RESOURCE MACHINE PROGRAM --

    BUMPUP   14
    INBOX
a:
    COPYTO   [14]
    OUTBOX
b:
    COPYFROM 14
    COPYTO   13
    INBOX
    COPYTO   0
c:
    SUB      [13]
    JUMPZ    b
    BUMPDN   13
    JUMPZ    d
    COPYFROM 0
    JUMP     c
d:
    BUMPUP   14
    COPYFROM 0
    JUMP     a

