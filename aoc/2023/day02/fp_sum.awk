{
    p = 1; delete a
    for (n=$(i=3); i < NF; n=$(++i)) if (n > a[$(++i)]) a[$i] = n
    for (i in a) p*=a[i]; s += p
}

END { print s }
