#!/usr/bin/bash

perl -lF'/\s+/' -e '$,=" "; print reverse @F;' | ./psum.awk
