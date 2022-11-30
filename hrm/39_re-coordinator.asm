-- HUMAN RESOURCE MACHINE PROGRAM --

-- in1 % 4, in1 / 4, ... -> out

    JUMP     b
a:
    ADD      15
    OUTBOX      -- col# < 4, outbox col#
    COPYFROM 10
    OUTBOX      -- outbox row#
b:
    COPYFROM 14
    COPYTO   10 -- row# -> r10
    INBOX
c:
    SUB      15
    JUMPN    a  -- break if n < 4
    COPYTO   11
    BUMPUP   10 -- increment row# if n >= 4
    COPYFROM 11
    JUMP     c
