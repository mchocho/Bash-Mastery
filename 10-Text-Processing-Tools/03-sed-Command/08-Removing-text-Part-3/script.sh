#!/bin/bash

# In this example, we will remove the text between
# 2 matching patterns.

function printUsage() {
  echo "Usage $0 str1 str2"
  echo "    Where str1 is the starting text to search for and str2 is the end of the pattern to search for."
  echo "    Everything between outside of str1 and str2 will be omitted."

  exit 1
}

if [ $# -ne 2 ]; then
  printUsage
elif [ -z "$1" ] || [ -z "$2" ]; then
  printUsage
fi

sed "/$1/,/$2/d" ../sample.txt
