#!/bin/bash

# To select a column of characters we use the ‘-c’ 
# option associated with the desired number of 
# characters.

if ! [ "$1" -eq "$1" ] 2> /dev/null ; then
  echo "Usage: $0 -c" >&2;
  echo "   -c specifies the charater's position" >&2;
  exit 0
fi

echo "In this example, we print characters situated at position $1 in the lines"
echo ""
echo "Command:"
echo "cut -c $1 ../../sample.txt"
echo ""

echo `cut -c $1 ../../sample.txt`
