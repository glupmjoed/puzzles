BEGIN { ew=ns=0; print ew " " ns }
      { d = (d + $1) % 4 }
 d==0 { while ($2 > 0) { $2--; ns++; print ew " " ns } }
 d==1 { while ($2 > 0) { $2--; ew++; print ew " " ns } }
 d==2 { while ($2 > 0) { $2--; ns--; print ew " " ns } }
 d==3 { while ($2 > 0) { $2--; ew--; print ew " " ns } }
