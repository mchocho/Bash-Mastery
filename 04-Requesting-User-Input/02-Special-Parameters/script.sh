#!/bin/bash

# The shell has several special paramters which
# may only be referenced; no assignment is allowed
# on them.

# https://www.gnu.org/software/bash/manual/bash.html#Special-Parameters

if [[ $# -lt 1 ]]; then
  echo "Please provided at least 1 parameter"
  echo "Usage: $0 <arg1> <arg2>"
  exit 1
fi

# $*
#   Expands to the positional parameters, starting from 1.
#   When the expansion occurs within double quotes, it 
#   expands to a single word with the value of each parameter 
#   separated by the first character of the IFS special variable.
#   Run echo "${IFS@Q}" to see which character it is. By default it
#   should be a space.

IFS=,
echo "Every argument provided in cli:"
echo "$*" # Without the double quotes ./script.sh "hi there" --> "hi","there"
echo

# $@
#   Pretty much the same as $* but uses a space as a delimeter 
#   and not IFS

echo "Let's do it again."
echo $@
echo

# $#
#    Expands to the number of positional parameters in decimal. 

echo "Number of arguments provided: ${#}"
echo

# $?
#   Expands to the exit status of the most recently executed 
#   foreground pipeline. 
echo "Last exit status used: $?. Defaults to 0"
echo

# $-
#   Expands to the current option flags as specified upon
#   invocation, by the set builtin command, or those set 
#   by the shell itself
echo "Shell options specified: $-"
echo

# $$
#   Expands to the process ID of the shell
echo "PID of shell: $$"
echo

# $!
#   Expands to the process ID of the job most recently placed 
#   into the background
#ls > /dev/null &
echo "PID of last background job: $!"
echo

# $0
#   Expands to the name of the shell or shell script.
echo "The name of our script: $0"

exit 0
