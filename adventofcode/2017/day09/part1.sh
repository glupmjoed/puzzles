#!/bin/bash

echo $((0$(sed "s/!.//g;s/<[^>]*>//g;       s/[^{}]//g;
                s/{/echo -n +\$((++v));/g;  s/}/((v--));/g" | bash)))
