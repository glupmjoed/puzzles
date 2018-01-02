#!/bin/bash

grep -o "[ns][ew]*" | tr -d '\n' |
    sed 's/ne/((x+=1)); ((y-=1));/g;  s/sw/((x-=1)); ((y+=1));/g;
         s/se/((y-=1)); ((z+=1));/g;  s/nw/((y+=1)); ((z-=1));/g;
          s/n/((x+=1)); ((z-=1));/g;   s/s/((x-=1)); ((z+=1));/g;
         s/$/ echo $x $y $z\n/g' |
    bash | grep -oE "[0-9]+" | sort -nr | head -1
