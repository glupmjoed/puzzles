#!/bin/bash

awk 'BEGIN { print "ibase=16; obase=2;" } { print toupper($0) }' | bc |
     sed -E 'N;s/\\\n//'
