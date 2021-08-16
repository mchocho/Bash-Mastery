#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs

# If statements are a type of compound command.
# They start and end using the reserved words "if"
# and "fi"

# The syntax of the if command is:
#      if test-commands; then
#         consequent-commands;
#      [elif more-test-commands; then
#          more-consequents;]
#      [else alternate-consequents;]
#      fi

# The if statements check the exit status of a command
# If the command you provide the if statement provides
# a zero exit status then the commands inside the if
# statements will run.

if [ 2 -eq 1 ]; then
  echo test passed
elif [ 1 -eq 1 ]; then
  echo second test passed
else
  echo test failed
fi
