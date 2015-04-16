#!/bin/bash

# displays csv in less page for better cli viewing
# cat $1 | column -s, -t | less -#2 -N -S
cat $1 | psc -k -d, | sc
