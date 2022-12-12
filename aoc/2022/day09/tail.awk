#!/usr/bin/awk -f

{
    print Tx " " Ty
    mx = Tx + ((dx = $1-Tx) ? (dx > 0 ? 1 : -1) : 0)
    my = Ty + ((dy = $2-Ty) ? (dy > 0 ? 1 : -1) : 0)
    dst = (dx < 0 ? -dx : dx) + (dy < 0 ? -dy : dy)
}

              BEGIN { Tx = Ty = 0 }
$1 == Tx && dst > 1 { Ty = my }
$2 == Ty && dst > 1 { Tx = mx }
            dst > 2 { Tx = mx; Ty = my }
                END { print Tx " " Ty }
