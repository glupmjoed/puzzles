-- HUMAN RESOURCE MACHINE PROGRAM --

-- sort([in1 ..  in3]), ... -> out

    JUMP     d
a:
    COPYFROM 1
    OUTBOX
    COPYFROM 2
b:
    OUTBOX
    COPYFROM 3
c:
    OUTBOX
d:
    INBOX
    COPYTO   1
    INBOX
    COPYTO   2
    SUB      1
    JUMPN    g
    INBOX      -- a1 <= a2
    SUB      1
    JUMPN    f
    ADD      1 -- a1 <= a2, a1 <= a3
    COPYTO   3
    SUB      2
    JUMPN    e
    JUMP     a -- a1 <= a2 <= a3
e:
    COPYFROM 1 -- a1 <= a3 < a2
    OUTBOX
    COPYFROM 3
    OUTBOX
    COPYFROM 2
    JUMP     c
f:
    ADD      1 -- a3 < a1 <= a2
    OUTBOX
    COPYFROM 1
    OUTBOX
    COPYFROM 2
    JUMP     c
g:
    INBOX      -- a2 < a1
    SUB      2
    JUMPN    i
    ADD      2 -- a2 < a1, a2 <= a3
    COPYTO   3
    SUB      1
    JUMPN    h
    COPYFROM 2 -- a2 < a1 <= a3
    OUTBOX
    COPYFROM 1
    JUMP     b
h:
    COPYFROM 2 -- a2 < a3 < a1
    OUTBOX
    COPYFROM 3
    OUTBOX
    COPYFROM 1
    JUMP     c
i:
    ADD      2 -- a3 < a2 < a1
    OUTBOX
    COPYFROM 2
    OUTBOX
    COPYFROM 1
    JUMP     c
