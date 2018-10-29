-- HUMAN RESOURCE MACHINE PROGRAM --

-- min([in1, in2 .. ~\0], [.. ~\0]) -> out

    COPYFROM 23
    COPYTO   12
a:                -- load 1st word (w1)
    INBOX
    JUMPZ    b
    COPYTO   [12]
    BUMPUP   12
    JUMP     a
b:
    COPYTO   11   -- i -> r11
    JUMP     d
c:                -- w1[i] == w2[i], outbox w2[i]
    COPYFROM [11]
    OUTBOX
    BUMPUP   11   -- i++
    SUB      12
    JUMPZ    h    -- done if i == len(w2)
d:
    INBOX         -- load w2 on the fly
    JUMPZ    h    -- done if i == len(w1)
    COPYTO   10   -- w2[i] -> r10
    SUB      [11] -- compare w1[i] and w2[i]
    JUMPZ    c
    JUMPN    f
e:                -- w1[i] < w2[i], outbox w1[i:]
    COPYFROM [11]
    OUTBOX
    BUMPUP   11   -- i++
    SUB      12
    JUMPN    e
    JUMP     h    -- done if i == len(w2)
f:                -- w2[i] < w1[i], outbox w2[i:]
    COPYFROM 10
g:
    OUTBOX
    INBOX
    JUMPZ    h
    JUMP     g
h:                -- end here, ignore any remaining input
