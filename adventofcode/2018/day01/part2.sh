#!/bin/bash

list=$(cat)

while true; do echo "$list"; done | ./find_dup.awk
