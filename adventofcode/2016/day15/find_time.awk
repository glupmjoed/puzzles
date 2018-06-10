    { sz[$1] = $2; st[$1] = $4; a = 1 }
END { for (; !(a=!a); t++) for (d in st) a += (st[d]+t+d) % sz[d]; print t-1 }
