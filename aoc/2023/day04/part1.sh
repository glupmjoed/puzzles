#!/usr/bin/bash

./wsort_uniqd | awk 'NF { s += 2**(NF-1) } END { print s }'
