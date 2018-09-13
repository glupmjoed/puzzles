#!/bin/bash

(grep -oE '[-]*[0-9]+'; echo 0) | paste -sd + | bc
