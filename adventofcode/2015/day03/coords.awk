BEGIN { ew = ns = 0; print ew " " ns }
 /\^/ { ns++ }
  />/ { ew++ }
  /v/ { ns-- }
  /</ { ew-- }
      { print ew " " ns }
