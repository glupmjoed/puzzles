{ for (i = 1; i <= NF; i+=2) printf "%s ", $i; printf "- " }
{ for (i = 2; i <= NF; i+=2) printf "%s ", $i; print "" }
