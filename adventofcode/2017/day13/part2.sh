#!/bin/bash

awk '{ print } END { print NR }' | tac | ./bin/calc_delay
