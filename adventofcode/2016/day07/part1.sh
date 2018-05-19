#!/bin/bash

sed 's/$/$/g; s/./&\n/g' | uniq -c | tr -d '\n 13-9' | tr '$[]' '\n<>' |
    sed -E '/<[^>]*(.)2.2?\1[^<]*>/d; /(.)2.2?\1/!d' | wc -l
