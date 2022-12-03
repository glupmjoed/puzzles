#!/bin/bash

./lsort_uniq | paste - - - | ./lrepeat -r=3 | ./prio.pl | paste -sd+ | bc
