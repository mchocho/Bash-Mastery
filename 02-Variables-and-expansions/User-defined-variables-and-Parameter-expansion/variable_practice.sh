#!/bin/bash

# Shell parameters are used to store and reference
# useful data that we can use in our scripts

# There are 3 types of shell parameters:
#   - Variables
#        A parameter whose value you can manually change (man variable)
#        There are 2 types of variables in bash 
#            user-defined variables and shell variable
#        It's customary to give user-defined variables lowercase names

#   - Positional parameters
#   - Special parameters

student="Amanda" # User-defined variables
echo "Hello ${student}"
echo "Keep up the good work, ${student}"

time="17:00 PM"

echo ""
echo "Dear ${student}"
echo "I'll need those copies by ${time}."


