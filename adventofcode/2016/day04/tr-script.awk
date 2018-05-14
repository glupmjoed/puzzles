BEGIN { set1 = "'A-Za-z'" }
      { printf "echo '%s (%s)' | tr '-' ' ' | tr %s ", $1, $2, set1 }
      { r=$2%26 }
    r { printf "'%c-ZA-%c%c-za-%c'\n", r+65, r+64, r+97, r+96 }
   !r { print set1 }
