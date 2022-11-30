-- HUMAN RESOURCE MACHINE PROGRAM --

-- lstrip([in1 / 100, in1 % 100 / 100, in1 % 10], \0), ... -> out

                -- r9 = 0
                -- r10 = 10
                -- r11 = 100
    COPYFROM 9
    COPYTO   6
    BUMPUP   6  -- 1 -> r6
    COPYFROM 10
    ADD      10
    COPYTO   7  -- 20 -> r7
    COPYFROM 11
    ADD      11
    COPYTO   8  -- 200 -> r8
    JUMP     d
a:
    COPYFROM 9
b:
    OUTBOX
    COPYFROM 3
c:
    OUTBOX
d:
    INBOX       -- inbox -> n
    SUB      8  -- n - 200
    JUMPN    h
    COPYTO   3  -- n >= 200
    COPYFROM 6
    COPYTO   5  -- 1 -> r5
e:
    COPYFROM 3
    SUB      8  -- n - 400
    JUMPN    f
    COPYTO   3  -- n >= 400
    BUMPUP   5
    JUMP     e
f:              -- n < 400 && n >= 200
    ADD      11
    JUMPN    g
    COPYTO   3
    COPYFROM 6
    ADD      5
    ADD      5
    JUMP     i
g:
    COPYFROM 5
    ADD      5
    JUMP     i
h:              -- n < 200
    ADD      11 -- n - 100
    JUMPN    j
    COPYTO   3  -- n >= 100 && n < 200
    COPYFROM 6
i:
    OUTBOX
    COPYFROM 3
    SUB      10
    JUMPN    a
    SUB      10
    JUMP     k
j:              -- n < 100
    ADD      11
    SUB      7  -- n - 20
k:
    JUMPN    o
    COPYTO   3  -- n >= 20 && n < 100
    COPYFROM 6
    COPYTO   4
l:
    COPYFROM 3
    SUB      7  -- -= 20
    JUMPN    m
    COPYTO   3
    BUMPUP   4
    JUMP     l
m:
    ADD      10 -- += 10
    JUMPN    n
    COPYTO   3
    COPYFROM 6
    ADD      4
    ADD      4
    JUMP     b
n:
    COPYFROM 4
    ADD      4
    JUMP     b
o:              -- n < 20
    ADD      10 -- n - 10
    JUMPN    p
    COPYTO   3  -- n >= 10 && n < 20
    COPYFROM 6
    JUMP     b
p:              -- n < 10, n -> outbox
    ADD      10
    JUMP     c
