-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 (where in1 == in2), in3 (where in3 == in4), ... -> out

    JUMP     b
a:
    COPYFROM 0
    OUTBOX
b:
    INBOX
    COPYTO   0
    INBOX
    SUB      0
    JUMPZ    a
    JUMP     b
