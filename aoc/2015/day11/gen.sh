#!/bin/bash

perl <(sed "s/KEY/$(cat)/" gen.pl) | sed "${1}q;d"
