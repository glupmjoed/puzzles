#!/bin/bash

a=$(cat)
echo $1 | ./bin/checksum $a $(echo $a | rev | tr '01' '10')
