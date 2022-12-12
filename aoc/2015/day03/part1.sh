#!/bin/bash

grep -o . | ./coords.awk | sort -u | wc -l
