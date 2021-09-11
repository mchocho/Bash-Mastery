#!/bin/bash

# To print characters specified at different
# positions you have to specify the byte position
# seperated by commas.

function printUsage() {
  echo "Usage $0 -l" >&2
  echo "       -l specifies the list of byte positions to print"

  return 0
}

if [ "$#" -ne 1 ] 2> /dev/null; then
  printUsage
  exit 1
fi

echo "We will print the bytes located at $1"
echo "Since our file has no special characters it will print all the specified positions."
echo
echo "cut -b $1 ../../sample.txt"

echo `cut -b $1 ../../sample.txt`
