-- HUMAN RESOURCE MACHINE PROGRAM --

-- [FLOOR[in1], FLOOR[FLOOR[in1+1]] .. ~FLOOR[-1]], ... -> out

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
