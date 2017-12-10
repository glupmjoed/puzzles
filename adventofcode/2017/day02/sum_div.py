#!/usr/bin/env python3

import re, sys

sum = 0
for line in sys.stdin:
    for pair in line.split():
        a = [int(d) for d in re.findall(r'\d+', pair)]
        if len(a) == 2 and a[0] > a[1] and a[0] % a[1] == 0:
            sum += a[0] // a[1]
print(sum)
