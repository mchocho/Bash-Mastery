#!/bin/bash

# Command subsitution is very similar to parameter expansion
# except instead of typing variable name we write out full
# commands and get the output of the command instead.

# The syntax for a command substitution is as follows:
#        $(command)

# This will cause the shell to run the command and substitute
# the dollar parentheses with the standard out of the command
# we run

time=$(date +%H:%m:%S)

echo "Hey there $USER, the time right now is $time"

exit 0
