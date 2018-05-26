#!/bin/bash

awk '{ print } END { print NR }' | tac | ./calc_delay
