#!/bin/bash

grep -oE '[-]*[0-9]+' | paste -sd + | bc
