   skip { if ((skip -= length($0)) < 0) { len -= skip; skip = 0 }; next }
/[0-9]/ { len += (skip = $1) * $2 }
/[A-Z]/ { len += length($0) }
    END { print len }
