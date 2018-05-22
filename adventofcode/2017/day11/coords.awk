BEGIN { x = y = z = 0; print "0 0 0" }
$0 == "n"  { x++; z-- }
$0 == "ne" { x++; y-- }
$0 == "nw" { y++; z-- }
$0 == "s"  { x--; z++ }
$0 == "se" { y--; z++ }
$0 == "sw" { x--; y++ }
           { print x " " y " " z }
