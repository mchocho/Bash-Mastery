#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Looping-Constructs

# The until loop is used to execute a given set of commands 
# as long as the given condition evaluates to false.

# The syntax of the until command is:
#     until test-commands; do consequent-commands; done

# The condition is evaluated before executing the commands.
# If the condition evaluates to false, commands are executed.

# Otherwise, if the condition evaluates to true the loop will 
# be terminated and the program control will be passed to the 
# command that follows.

counter=0

until [ $counter -gt 5 ]
do
  echo "Counter: $counter"
  ((counter++))
done

exit 0
