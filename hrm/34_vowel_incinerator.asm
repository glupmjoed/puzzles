-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 (where in1 ∉ {a, e, i, o, u}), ... -> out

    JUMP     b
a:
    COPYFROM 7
    OUTBOX
b:
    COPYFROM 5
    COPYTO   6
    INBOX
    COPYTO   7
c:
    COPYFROM [6]
    JUMPZ    a
    SUB      7
    JUMPZ    b
    BUMPUP   6
    JUMP     c

