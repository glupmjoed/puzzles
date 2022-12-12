#!/usr/bin/awk -f

    BEGIN { x = y = 0; print x " " y }
$1 == "D" { while ($2-- > 0) print x " " --y }
$1 == "L" { while ($2-- > 0) print --x " " y }
$1 == "R" { while ($2-- > 0) print ++x " " y }
$1 == "U" { while ($2-- > 0) print x " " ++y }
