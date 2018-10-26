-- HUMAN RESOURCE MACHINE PROGRAM --

-- FLOOR[in], ... -> out

a:
    INBOX
    COPYTO   10
    COPYFROM [10]
    OUTBOX
    JUMP     a
