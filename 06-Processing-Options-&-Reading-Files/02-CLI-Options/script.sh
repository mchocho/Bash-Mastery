#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Bourne-Shell-Builtins

# The syntax of the while command is:
#          getopts optstring name [arg …]

# getopts is used by shell scripts to parse positional parameters.
# optstring contains the option characters to be recognized; if a 
# character is followed by a colon, the option is expected to have
# an argument, which should be separated from it by whitespace.

# The getopts command doesn't get all the options at once. It just
# gets the next option on the command line each time that it's run.
# In order to ensure that the getopts command processes every option,
# we need to write the getopts command as the condition command of
# a while loop.

while getopts "f:c:" opt; do
  case "$opt" in
    # The option currently being evaluated by getopt is stored inside $OPTARG
    c) result=$(echo "scale=2; ($OPTARG * (9 / 5) + 32)" | bc);;
    f) result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc);;
    # Instead of an asterisk, we can use \? to catch unwanted options
    \?);;
  esac
done
echo "$result"

# Each time we run the loop, the getopts command will read
# an argument on the command line. If it's a valid option, that
# option will be saved in opt. If it's not a valid option, however
# opt will have a question mark stored inside it.
