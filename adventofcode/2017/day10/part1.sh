#!/bin/bash

grep -oE [0-9]+ | ./bin/sparse_hash | head -2 | paste -sd* | bc
