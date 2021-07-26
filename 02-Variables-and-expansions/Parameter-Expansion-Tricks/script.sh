#!/bin/bash

name=SaL\'e

echo "Hello ${name}"

# Wrapping parameters in curly braces allows access to
# advance parameter expansion features

echo ""
echo "To make the 1st letter lowercase just add a ,: ${name,}"
echo "This won't change the value of the parameter: ${name}"
echo "To change the entire value to lowercase we include a second ,: ${name,,}"

name=${USER}

echo ""
echo "Hello ${name}"


echo ""
echo "To capitalize the first letter just add a ^: ${name^}"
echo "To convert the entire string to uppercase include a second ^: ${name^^}"

echo ""
echo "To get the length of the string we prepend #: ${#name}"

# The syntax for slicing ${patameter:offset:length}
number=0123456789

echo ""
echo "When we have the string: ${number}"
echo "\${number:0:7} produces: ${number:0:7}"
echo "\${number:1:5} produces: ${number:1:5}"
echo "\${number:3} produces: ${number:3}" #Bash will assume the rest of the string
echo "\${number:3:}" produces: ${number:3:} #Bash will assume a length of 0

echo ""
echo "We can also count back from the end of a string"
echo "When we have the string: ${number}"

# It's a rule that we leave a space before the minus sign
echo "\${number: -3:2} produces ${number: -3:2}" 
echo "\${number: -3} produces ${number: -3}" 


exit 0
