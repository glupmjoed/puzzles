#!/bin/bash

grep -o "[ns][ew]*" | awk -f coords.awk | grep -oE "[0-9]+" | sort -n | tail -1
