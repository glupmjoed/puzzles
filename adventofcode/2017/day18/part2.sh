#!/bin/bash

./bin/simulate 2 | grep "^p1 sent" | wc -l
