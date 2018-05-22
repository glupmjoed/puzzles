    BEGIN { ew = ns = 0; print ew " " ns }
$0 == "^" { ns++ }
$0 == ">" { ew++ }
$0 == "v" { ns-- }
$0 == "<" { ew-- }
          { print ew " " ns }
