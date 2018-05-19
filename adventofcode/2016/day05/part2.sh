#!/bin/bash

./bin/hash | awk -F '' -f first0-7.awk | sort | cut -f 2 | paste -sd ''
