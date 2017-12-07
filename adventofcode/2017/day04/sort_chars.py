#!/usr/bin/env python3

import sys

for line in sys.stdin:
    for word in line.split():
        sys.stdout.write(''.join(sorted(word)) + ' ')
    print()
