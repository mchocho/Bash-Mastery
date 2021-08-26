#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Bash-Builtins

# The readarray command converts whatever it reads
# on its standard input stream into an array.

# The -t option will remove trailing new lines by
# default

readarray -t days < days.txt

echo ${days[@]@Q}
