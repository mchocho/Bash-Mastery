#/bin/bash

# A positional parameter is a parameter denoted by 1 or
# more digits. Positional parameter N may be referenced
# as ${N} or $N (when N consists of a single digit).
# They may not be assigned to with assignment statements.

# The set and shift builtins are used to set and unset them.

# https://www.gnu.org/software/bash/manual/bash.html#Positional-Parameters

echo "My name is $1"
echo "My home directory is $2"
echo "My favourite colour is $3"
echo "The name of this script is ${0}"
echo "The 10th argument is ${10}"
echo "The 11th argument is $11" # Will read $1

exit 0
