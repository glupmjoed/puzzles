-- HUMAN RESOURCE MACHINE PROGRAM --

-- count([FLOOR[1], FLOOR[2] .. ~\0], in1), ... -> out

    JUMP     b
a:
    COPYFROM 18
    OUTBOX
b:
    COPYFROM 14
    COPYTO   19
    COPYTO   18
    INBOX
    COPYTO   17
    JUMP     e
c:
    BUMPUP   18
d:
    BUMPUP   19
e:
    COPYFROM [19]
    JUMPZ    a
    SUB      17
    JUMPZ    c
    JUMP     d
