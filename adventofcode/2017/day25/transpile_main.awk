         NR == 2 { print "\nfunc main() { m = make(map[int64]uint64); "
                   print "var steps = " $6 }
                 { i = (NR - 4) % 10 }
i == 0           { print $3 ": if steps == 0 { end() }; steps--"
                   print "switch mask := uint64(1) << ix; cache & mask {" }
i == 1           { print "case " $6 ":" }
          i == 5 { print "default:" }
i == 2 || i == 6 { print "cache" $5 "mask" }
i == 3 || i == 7 { print $7 "()" }
i == 4 || i == 8 { print "goto " $5 }
          i == 8 { print "}" }
             END { print "}" }
