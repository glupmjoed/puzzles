-- HUMAN RESOURCE MACHINE PROGRAM --

-- reverse([in1, in2 .. ~\0]), ... -> out

    JUMP     b
a:
    BUMPUP   14
b:
    INBOX
    JUMPZ    c
    COPYTO   [14]
    JUMP     a
c:
    BUMPDN   14
    JUMPN    a
    COPYFROM [14]
    OUTBOX
    JUMP     c
