#!/bin/bash

# To print the number of fields you 
# have to specify the start and end position.

function printUsage() {
  echo "Usage $0 -d -s -e"
  echo "       -d specifies the delimiter to use, -s is the start position and -e is the end position."

  exit 1
}

if [ -z "$1" ] && [ "$1" -ne " " ] || ! [ "$2" -eq "$2" ] 2> /dev/null || ! [ "$3" -eq "$3" ] 2> /dev/null; then
  printUsage
fi

echo "We will print field between $2 and $3 using the delimiter $1"
echo "cut -d \"$1\" -f $2-$3 ../../sample.txt"
echo

echo $(cut -d "$1" -f "$2"-"$3" ../../sample.txt)
