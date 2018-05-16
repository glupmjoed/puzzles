          { i = (NR - 1) % 16 }
 i == 0   { b = 0 }
          { b = xor(b, $1) }
 i == 15  { printf "%.2x", b }
NR == 256 { print "" }
