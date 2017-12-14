#!/usr/bin/env python3

import re, sys

def spread(i, mx): return mx//len(mbs) + 1 if i < mx%len(mbs) else mx//len(mbs)

mbs = [int(w) for w in sys.stdin.readline().split()]
while True:
    mx = max(mbs)
    pos = mbs.index(mx)
    mbs[pos] = 0
    pos = (pos + 1) % len(mbs)
    for i, v in enumerate([spread(x, mx) for x in range(len(mbs))]):
        mbs[(pos+i) % len(mbs)] += v
    print(' '.join([str(d) for d in mbs]))
