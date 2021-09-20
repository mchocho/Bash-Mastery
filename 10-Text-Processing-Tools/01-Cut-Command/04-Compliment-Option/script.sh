#!/bin/bash

# The complement option will output the 
# opposite of what the previous options 
# would have outputted.

function printUsage() {
  echo "Usage $0 -str -n"
  echo "     -str is the string to extract from and -n is the first \`n\` characters to cut"

  exit 1
}

if [ -z "$1" ] || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  printUsage
fi

echo "We will extract the remainder of string `$1` from position $2"
echo "echo $1 | cut -c -$2 --complement"
echo

echo `echo "$1" | cut -c -$2 --complement`
exit 0
