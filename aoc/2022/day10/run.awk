#!/usr/bin/awk -f

BEGIN        { x = 1 }
$1 == "addx" { skip(2); x += $2 }
$1 == "noop" { skip(1) }

function skip(i) { while (i-- > 0) print ++n " * " x }
