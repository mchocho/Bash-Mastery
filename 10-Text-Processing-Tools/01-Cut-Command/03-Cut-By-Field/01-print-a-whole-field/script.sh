#!/bin/bash

# Instead of selecting characters we can extract
# a whole field using the ‘-f’ and ‘-d’ option.

# ‘-d’ stands for the delimiter. A Delimiter is 
# a sequence of one or more characters for
# specifying the boundary between separate
# regions of text.

function printUsage() {
  echo "Usage $0 -d -f"
  echo "       -d specifies the delimiter to use and -f is the number of fields to use."

  exit 1
}

if [ -z $1 ] && [ $1 -ne " " ] || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  printUsage
fi

echo "We will print field number $2 using the delimiter $1"
echo "cut -d \"$1\" -f $2 ../../sample.txt"
echo

echo `cut -d "$1" -f $2 ../../sample.txt`
echo
