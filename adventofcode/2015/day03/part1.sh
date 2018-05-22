#!/bin/bash

grep -o . | awk -f coords.awk | sort | uniq | wc -l
