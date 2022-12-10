#!/bin/bash

./run.awk | grep -E '^([26]|1[048]|22)0\b' | paste -sd+ | bc
