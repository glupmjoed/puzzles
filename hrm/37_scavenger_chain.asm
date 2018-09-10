-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
b:
    COPYTO   5
    COPYFROM [5]
    OUTBOX
    BUMPUP   5
    COPYFROM [5]
    JUMPN    a
    JUMP     b
