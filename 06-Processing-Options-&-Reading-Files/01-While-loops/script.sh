#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Looping-Constructs

# The syntax of the while command is: 
#          while test-commands; do consequent-commands; done

# Execute consequent-commands as long as test-commands
# has an exit status of zero. The return status is the exit
# status of the last command executed in consequent-commands,
# or zero if none was executed. 

read -p "Enter your number: " number

while [ $number -ge 10 ]; do
  echo $number
  number=$(( $number - 1 ))
done
