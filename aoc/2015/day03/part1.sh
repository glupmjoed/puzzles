#!/bin/bash

grep -o . | ./coords.awk | sort | uniq | wc -l
