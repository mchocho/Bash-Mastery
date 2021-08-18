#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs

# The syntax of the case command is: 
#
#     case word in
#       [ [(] pattern [| pattern]…) command-list ;;]…
#     esac


# You must:
#    i) Add the $ symbol for word
#   ii) Wrap the parameter expansion in double quotes

read -p "Please enter a number: " number
case "$number" in
  [0-9]) echo "You entered a single digit number";;
  [0-9][0-9]) echo "You entered a two digit number";;
  [0-9][0-9][0-9]) echo "You entered a three digit number";;
  *) echo "Ahh, a rule breaker I see";;
esac
