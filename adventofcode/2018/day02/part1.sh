#!/bin/bash

m=$(perl -F -lane 'print sort @F' | tr '\n' '-' | grep -o . | uniq -c |
        tr -dc '23-' | tr '-' '\n')

echo $(grep 2 <<< "$m" | wc -l) \* $(grep 3 <<< "$m" | wc -l) | bc
