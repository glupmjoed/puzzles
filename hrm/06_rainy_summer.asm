-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 + in2, ... -> out

a:
    INBOX
    COPYTO   0
    INBOX
    ADD      0
    OUTBOX
    JUMP     a
