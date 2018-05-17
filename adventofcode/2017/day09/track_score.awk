    BEGIN { a = 0 }
$0 == "{" { a += ++d }
$0 == "}" { d-- }
      END { print a }
