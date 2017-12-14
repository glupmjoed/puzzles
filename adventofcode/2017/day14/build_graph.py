#!/usr/bin/env python3

import sys

print("graph g {")
line1 = "0"*128
for row, line2 in enumerate(sys.stdin):
    line2 = "0"*(128+1-len(line2)) + line2
    prev = False
    for col, val in enumerate(line2):
        if val == '1':
            print('\tv{}x{}'.format(row, col))
            if prev:
                print('\tv{}x{} -- v{}x{}'.format(row, col-1, row, col))
            prev = True
            if line1[col] == '1':
                print('\tv{}x{} -- v{}x{}'.format(row-1, col, row, col))
        else: prev = False
    line1 = line2
print("}")
