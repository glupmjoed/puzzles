#!/bin/bash

./bin/hash | head -8 | cut -c 6 | paste -sd ''
