#!/bin/bash

(grep -oP '[-]*\d+'; echo 0) | paste -sd+ | bc
