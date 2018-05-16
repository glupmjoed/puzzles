#!/bin/bash

./coords.sh | tail -1 | grep -oE "[0-9]+" | paste -sd+ | bc
