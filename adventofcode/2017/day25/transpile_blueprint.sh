#!/bin/bash

echo 'package main'
echo 'import "fmt"'
echo 'import "math/bits"'
echo 'var mx int64'
echo 'var cache, ix uint64'
echo 'var m map[int64]uint64'

sed 's/0\./\&=^/g; s/1\./|=/g; s/[.:;{}]//g' |

    awk 'BEGIN { print "func main() {\nm = make(map[int64]uint64)" }
         NR==2 { print "var steps = " $6 }
               { i = (NR-4)%10 }
  i==0         { print $3 ": if steps == 0 { goto END }; steps--" }
  i==0         { print "switch mask := uint64(1) << ix; cache & mask {" }
  i==1         { print "case " $6 ":" }
          i==5 { print "default:" }
  i==2 || i==6 { print "cache" $5 "mask" }
  i==3 || i==7 { print $7 "()" }
  i==4 || i==8 { print "goto " $5 }
          i==8 { print "}" }
           END { print "END: m[mx] = cache; var ones int" }
           END { print "for _, v := range m { ones += bits.OnesCount64(v) }" }
           END { print "fmt.Println(ones) }" }'

echo 'func left() { if ix > 0 { ix--; return };
      m[mx] = cache; mx--; cache = m[mx]; ix = 0x3f }'
echo 'func right() { if ix < 0x3f { ix++; return };
      m[mx] = cache; mx++; cache = m[mx]; ix = 0x0 }'
