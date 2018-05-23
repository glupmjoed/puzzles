#!/bin/bash

sed -E 's/\(([0-9]+)x([0-9]+)\)/\n\1 \2 .\n/g' | awk -f find_length.awk
