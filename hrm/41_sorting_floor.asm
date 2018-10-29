-- HUMAN RESOURCE MACHINE PROGRAM --

-- sort([in1, in2 .. ~\0]), ... -> out

a:
    COPYFROM 24   -- (n is length of array)
    COPYTO   22   -- m = 0 (m is index of minimum element)
    INBOX
    COPYTO   [24] -- inbox -> a[n]
b:
    BUMPUP   24   -- n++
    INBOX
    JUMPZ    d
    COPYTO   [24] -- inbox -> a[n]
    SUB      [22]
    JUMPN    c
    JUMP     b    -- a[n] >= a[m], continue
c:                -- a[n] < a[m], update min index
    COPYFROM 24
    COPYTO   22   -- m = n
    JUMP     b    -- continue
d:                -- end of input array
    COPYFROM [22]
    OUTBOX        -- a[m] -> outbox
    BUMPDN   24   -- n--
    JUMPZ    a    -- if singleton-array, we are done here
    COPYTO   23   -- i = n
    COPYFROM [24]
    COPYTO   [22] -- a[m] = a[n] (repopulate gap)
    BUMPDN   23   -- i--
    COPYTO   22   -- m = i (last element is tentative min element)
    JUMP     f
e:                -- i < 0, new minimum found
    COPYFROM [22]
    OUTBOX        -- a[m] -> outbox
    BUMPDN   24   -- n--
    COPYTO   23   -- i = n
    COPYFROM [24]
    COPYTO   [22] -- a[m] = a[n]
    BUMPDN   23   -- i--
    JUMPZ    h
    COPYTO   22
f:                -- find new minimum
    BUMPDN   23   -- i--
    JUMPN    e
    COPYFROM [23]
    SUB      [22]
    JUMPN    g
    JUMP     f    -- a[i] >= a[m], continue
g:                -- a[i] < a[m]
    COPYFROM 23
    COPYTO   22   -- m = i
    JUMP     f
h:                -- i == 0, only one element left
    COPYTO   24   -- n = 0
    COPYFROM [23]
    OUTBOX        -- a[i] -> outbox
    JUMP     a    -- next array
