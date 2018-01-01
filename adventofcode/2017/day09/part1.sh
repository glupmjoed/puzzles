#!/bin/bash

sed "s/!.//g; s/<[^>]*>//g; s/[^{}]//g;
     s/{/echo -n \$((++v))+;/g; s/}/((v--));/g;
     s/\$/echo 0;/g;" | bash | bc
