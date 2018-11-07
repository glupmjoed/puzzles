#!/bin/bash

./bin/zoom | grep "gives 17 to .* and 61 to" | cut -d ' ' -f 2
