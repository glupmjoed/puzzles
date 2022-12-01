#!/bin/bash

./carried.awk | sort -nr | head -3 | paste -sd+ | bc
