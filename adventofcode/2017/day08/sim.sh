#!/bin/bash

grep -E "^[a-z]+ (inc|dec) -*[0-9]+ if [a-z]+ [<>!=]=* -*[0-9]+$" |

    sed 's/!=/ne/g;  s/==/eq/g;  s/inc //g;  s/dec /-/g;
         s/<=/le/g;  s/>=/ge/g;  s/</lt/g;   s/>/gt/g;' |

    awk '{ printf "if [ $((%s)) -%s %s ]; then ((%s += %s)); fi; ",$4,$5,$6,$1,$2 }
         { print "echo $((" $1 ")) " $1 "; echo $((" $4 ")) " $4 }' |

    bash
