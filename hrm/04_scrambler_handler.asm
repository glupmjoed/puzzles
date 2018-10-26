-- HUMAN RESOURCE MACHINE PROGRAM --

-- in2, in1, ... -> out

a:
    INBOX
    COPYTO   0
    INBOX
    OUTBOX
    COPYFROM 0
    OUTBOX
    JUMP     a
