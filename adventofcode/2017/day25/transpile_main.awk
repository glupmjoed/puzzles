                BEGIN { print "\nfunc main() {"
                        print "m = make(map[int64]uint64)" }
          /^Begin in/ { beg = $4; next }
     /checksum after/ { print "var steps = " $6 "; goto " beg; next }
   /^In state [A-Z]$/ { print $3 ": if steps == 0 { end() }; steps--"
                        print "switch mask := uint64(1) << ix; cache & mask {"
                        endstate = 0; next }
      /current value/ { print ($6 ? "default:" : "case 0:"); next }
    /Write the value/ { print "cache " ($5 ? "|=" : "&=^") "mask"; next }
/Move.*(left|right)$/ { print $7 "()"; next }
      /Continue with/ { print "goto " $5; if (endstate++) print "}"; next }
                  END { print "}" }
