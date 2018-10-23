-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 + in2, in3 + in4, ... -> out

a:
    INBOX
    COPYTO   0
    INBOX
    ADD      0
    OUTBOX
    JUMP     a
