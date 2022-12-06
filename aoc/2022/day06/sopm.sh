#!/bin/bash

grep -o . | sed -n "x;G;1,$1!s/^..//;h;s/\n//g;$1~1p" |
    perl -nle "print $.+$1-1 and exit if !/(.).*\1/;"
