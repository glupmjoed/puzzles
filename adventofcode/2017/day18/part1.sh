#!/bin/bash

./bin/simulate 1 | grep "sent" | tail -1 | cut -d ' ' -f 3
