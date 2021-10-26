#!/bin/bash

# Here the delete command is used to delete text
# lines containing a matching a pattern

function printUsage() {
  echo "Usage $0 -str1"
  echo "     Where str1 is the string to search for and delete it's line."

  exit 1
}

if [ -z "$1" ]; then
  printUsage
fi

sed "/$1/d" ../sample.txt
