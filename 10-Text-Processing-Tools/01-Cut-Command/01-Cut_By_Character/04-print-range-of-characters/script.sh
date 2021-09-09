#!/bin/bash

# To print characters within a range you
# just specify the starting and end position
# of the range (start-end).

function printUsage(){
  echo "Usage: $0 -s -e" >&2
  echo "      -s specifies the start position and -e specifies the end position." >&2

  return 0
}

if ! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  printUsage
  exit 1
fi

echo "We will print characters from $1 till $2"
echo
echo "cut -c $1-$2 ../../sample.txt"

echo `cut -c $1-$2 ../../sample.txt`
