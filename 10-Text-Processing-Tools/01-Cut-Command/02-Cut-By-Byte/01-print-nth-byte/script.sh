#!/bin/bash

# A byte is of 8 bits and it can hold values
# from -128 to 127 but a char variable can hold
# any value between 0 to 255 i.e 256 characters.
# Eight bits are called a byte.

# One byte character set contains 256 characters.
# We use ‘-b’ to cut out a section by just
# specifying the position.

function printUsage() {
  echo "Usage $0 -n" >&2
  echo "       -n specifies the byte position to print"
  return 0
}

if ! [ "$1" -eq "$1" ] 2> /dev/null; then
  printUsage
  exit 1
fi

echo "We will print the byte located at position $1"
echo
echo "cut -b $1 ../../sample.txt"

echo `cut -b $1 ../../sample.txt`
exit 0
