#!/bin/bash

sed 's/[^()]//g; s/^/0/; s/(/+1/g; s/)/-1/g; $a\' | bc
