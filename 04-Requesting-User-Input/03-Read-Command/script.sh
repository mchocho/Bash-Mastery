#!/bin/bash

#   read [-ers] [-a aname] [-d delim] [-i text] [-n nchars]
#       [-N nchars] [-p prompt] [-t timeout] [-u fd] [name …]

# One line is read from the standard input, or from the file
# descriptor fd supplied as an argument to -u. The first 
# word is assigned to the first name, the second word to 
# the second name, and so on.

# If there are more words than names, the remaining words 
# are assigned to the last name. If there are fewer words 
# read from the input stream than names, the remaining names 
# are assigned empty values. The characters in the value of 
# the IFS variable are used to split the line into words.
# 
# https://www.gnu.org/software/bash/manual/bash.html#Bash-Builtins


read -p "Enter a first and last name: " first last
read -N 4 -p "Enter $first's current extension number (must be 4 digits): " extension
echo
read -N 4 -s -p "Enter an access code (must be 4 digits): " access
echo

echo "$first,$last,$extension,$access" >> extensions.csv
