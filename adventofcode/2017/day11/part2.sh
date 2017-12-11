#!/bin/bash

sed 's/,/ /g;
     s/ne/((x+=1)); ((y-=1)); echo $x $y;/g;
     s/sw/((x-=1)); ((y+=1)); echo $x $y;/g;
     s/se/((y-=1)); ((z+=1)); echo $y $z;/g;
     s/nw/((y+=1)); ((z-=1)); echo $y $z;/g;
      s/n/((x+=1)); ((z-=1)); echo $x $z;/g;
      s/s/((x-=1)); ((z+=1)); echo $x $z;/g;' |
	bash | grep -oE "[0-9]+" | sort -nr | head -1
