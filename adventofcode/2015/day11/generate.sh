#!/bin/bash

perl -e '$s="'$(cat)'"; while (1) { print ++$s."\n" }' | ./bin/inc3filter |
    sed -uE '/[iol]/d; /(.)\1.*(.)\2/!d;' | head -$1
