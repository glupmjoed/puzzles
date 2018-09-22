#!/bin/bash

bf <(tr '()' '+-'; echo .) | od -dAn | xargs
