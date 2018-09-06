-- HUMAN RESOURCE MACHINE PROGRAM --

    JUMP     b
a:
    COPYFROM 4
    OUTBOX
b:
    COPYFROM 9
    COPYTO   4
    INBOX
    COPYTO   0
    INBOX
    COPYTO   2
c:
    COPYFROM 0
    SUB      2
    JUMPN    a
    COPYTO   0
    BUMPUP   4
    JUMP     c
