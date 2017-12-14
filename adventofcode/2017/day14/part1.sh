#!/bin/bash

key=$(cat);
for i in {0..127}; do echo $key-$i | ./knot_hash.sh; done
