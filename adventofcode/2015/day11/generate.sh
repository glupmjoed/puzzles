#!/bin/bash

perl -e '$s="'$1'"; while (1) { print ++$s."\n" }' | ./bin/inc3filter |
    sed -uE '/[iol]/d; /(.)\1.*(.)\2/!d;'
