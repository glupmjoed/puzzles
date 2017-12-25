#!/bin/bash

./bin/simulate 1 | grep "sent" | tail -1 | awk '{ print $3 }'
