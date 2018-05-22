#!/bin/bash

grep -o "[ns][ew]*" | awk -f coords.awk | tail -1 | grep -oE "[0-9]+" | sort |
    tail -1
