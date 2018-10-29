-- HUMAN RESOURCE MACHINE PROGRAM --

-- primfac(in1), ... -> out

    COPYFROM 24
    COPYTO   20
    COPYTO   0
    BUMPUP   0
    BUMPUP   0    -- a[0] = 2
    COPYTO   1
    BUMPUP   1    -- a[1] = 3
    ADD      0
    COPYTO   2    -- a[2] = 5
    ADD      0
    COPYTO   3    -- a[3] = 7
    ADD      0
    ADD      0
    COPYTO   4    -- a[4] = 11
    ADD      0
    COPYTO   5    -- a[5] = 13
    ADD      0
    ADD      0
    COPYTO   6    -- a[6] = 17
    ADD      0
    COPYTO   7    -- a[7] = 19
    JUMP     b
a:
    COPYFROM 24
    COPYTO   20   -- i = 0
b:
    INBOX         -- inbox -> n
c:
    COPYTO   15
d:                -- find n % a[i]
    SUB      [20]
    JUMPN    e
    JUMP     d
e:
    ADD      [20]
    JUMPZ    f
    BUMPUP   20   -- n % a[i] != 0, i++
    COPYFROM 15
    JUMP     d
f:
    COPYFROM [20] -- n % a[i] == 0
    OUTBOX        -- a[i] -> outbox
    COPYFROM 24
    COPYTO   16   -- d = 0
g:                -- find d = n / a[i]
    COPYFROM 15
    SUB      [20]
    JUMPZ    h
    COPYTO   15   -- n -= a[i]
    BUMPUP   16   -- d++
    JUMP     g
h:
    COPYFROM 16
    JUMPZ    a
    BUMPUP   16
    JUMP     c    -- n = d
