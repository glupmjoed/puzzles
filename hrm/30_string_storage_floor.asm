-- HUMAN RESOURCE MACHINE PROGRAM --

-- [FLOOR[in], FLOOR[in + 1] .. \0], ... -> out

a:
    INBOX
    COPYTO   24
b:
    COPYFROM [24]
    JUMPZ    a
    OUTBOX
    BUMPUP   24
    JUMP     b
