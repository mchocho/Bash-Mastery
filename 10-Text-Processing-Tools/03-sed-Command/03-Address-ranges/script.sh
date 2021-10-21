#!/bin/bash

# Address ranges are defined by simply entering
# the line number or range.

function printUsage() {
  echo "Usage $0 num1 [num2]"
  echo "    Where num1 is the line to print and num2 is the range to print from."

  exit 1
}

if [ $# -eq 1 ] || [ $# -eq 2 ]; then
  if [ $# -eq 1 ] && ! [ "$1" -eq "$1" ] 2> /dev/null; then
    printUsage
  elif (! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null); then
    printUsage
  fi
else
  printUsage
fi

if [ $# -eq 1 ]; then
  sed -n "$1p" ../sample.txt
else
  sed -n "$1,$2p" ../sample.txt
fi

exit 0
