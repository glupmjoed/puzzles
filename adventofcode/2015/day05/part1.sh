#!/bin/bash

sed -E '/[aeiou].*[aeiou].*[aeiou]/!d; /(.)\1/!d; /(ab|cd|pq|xy)/d' | wc -l
