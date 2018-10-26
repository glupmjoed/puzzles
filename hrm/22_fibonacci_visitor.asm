-- HUMAN RESOURCE MACHINE PROGRAM --

-- [fib(1), fib(2) .. fib(n)] (for n <= in), ... -> out

a:
    INBOX
    COPYTO   2
    BUMPUP   2
    COPYFROM 9
    COPYTO   0
    BUMPUP   0
    COPYTO   1
    OUTBOX
b:
    COPYFROM 1
    OUTBOX
    COPYFROM 1
    ADD      0
    COPYTO   0
    SUB      2
    JUMPN    c
    JUMP     a
c:
    COPYFROM 0
    OUTBOX
    COPYFROM 0
    ADD      1
    COPYTO   1
    SUB      2
    JUMPN    b
    JUMP     a
