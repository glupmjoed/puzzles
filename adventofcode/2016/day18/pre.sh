#!/bin/bash

tr '.^' '01' | fold -w 64 | rev | echo $1 $(tac) | ./bin/count_tiles
