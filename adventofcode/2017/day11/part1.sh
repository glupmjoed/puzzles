#!/bin/bash

cat <(grep -o "[ns][ew]*" |
    sed 's/ne/((x+=1)); ((y-=1));/g;  s/sw/((x-=1)); ((y+=1));/g;
         s/se/((y-=1)); ((z+=1));/g;  s/nw/((y+=1)); ((z-=1));/g;
          s/n/((x+=1)); ((z-=1));/g;   s/s/((x-=1)); ((z+=1));/g;'
     ) <(echo 'echo $x $y $z') |

    bash | grep -oE "[0-9]+" | sort -nr | head -1
