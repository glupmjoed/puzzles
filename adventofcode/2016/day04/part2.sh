#!/bin/bash

./sanitize.sh | awk -f tr-script.awk | bash | grep -i "north *pole"
