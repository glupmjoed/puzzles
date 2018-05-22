#!/bin/bash

./bin/hash | awk '/^000000/ { print $2; exit }'
