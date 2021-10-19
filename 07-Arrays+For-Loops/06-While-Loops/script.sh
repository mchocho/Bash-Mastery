#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Looping-Constructs

# The while loop is used to performs a given set of commands 
# an unknown number of times as long as the given condition 
# evaluates to true.

# The syntax of the while command is: 
#       while test-commands; do consequent-commands; done

# The condition is evaluated before executing the commands.
# If the condition evaluates to true, commands are executed.
# Otherwise, if the condition evaluates to false, the loop
# is terminated, and the program control will be passed
# to the command that follows.

count=0

while [ $count -le 10 ]
do
  echo "Count: $count"
  ((count++))
done

exit 1
