#!/bin/bash

# If you want to print first n characters.
# We have to only specify the -c- (with an appended dash)
# option with the number of characters to print.

if ! [ "$1" -eq "$1" ] 2> /dev/null ; then
  echo "Usage $0 -C" >&2;
  echo "   -C specifies the number of characters to print up to." >&2;
  exit 0
fi

echo "We will print the first $1 characters, this can include spaces."
echo ""
echo "cut -c-$1 ../../sample.txt"
echo ""

cut -c-$1 ../../sample.txt
