#!/bin/bash

./lsort_uniq | paste - - - | ./lrepeat -r=3 | ./sum_prio.pl
