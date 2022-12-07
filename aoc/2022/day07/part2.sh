#!/bin/bash

./du.pl | ./del_sz.awk | sort -n | head -1
