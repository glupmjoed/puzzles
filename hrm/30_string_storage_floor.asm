-- HUMAN RESOURCE MACHINE PROGRAM --

-- [FLOOR[in1], FLOOR[in1 + 1] .. ~\0], ... -> out

a:
    INBOX
    COPYTO   24
b:
    COPYFROM [24]
    JUMPZ    a
    OUTBOX
    BUMPUP   24
    JUMP     b
