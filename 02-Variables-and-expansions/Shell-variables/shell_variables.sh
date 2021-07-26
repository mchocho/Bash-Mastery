#!/bin/bash

# Shell parameters are used to store and reference
# useful data that we can use in our scripts

# There are 3 types of shell parameters:
#   - Variables
#        There are 2 types of variables in bash 
#            user-defined variables and shell variable

#        There are 2 types of shell variables:
#          * Bourne Shell Variables
#               Bourne shell (created by Stephen Bourne in 1979)
#               10 variables in total

#          * Bash Shell Variables
#               Bash shell (based on the Bourne shell)
#               Around 95 variables
#          To list all shell variables run:
#                   declare -p

#   - Positional parameters
#   - Special parameters

me=$(whoami) # User-defined variables
echo "Hello ${me}"
echo "Keep up the good work, ${me}"

time="17:00 PM"

echo ""
echo "Dear ${me}"
echo "I'll need those copies by ${time}."


