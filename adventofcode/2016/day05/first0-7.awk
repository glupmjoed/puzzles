         BEGIN { for (_ in a); } # <- force array type
  /00000[0-7]/ { if (!a[$6]) { a[$6] = $7; print $6 "\t" $7 } }
length(a) == 8 { exit }
