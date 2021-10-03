#!/bin/bash

# We use $ (dollar) symbol followed
# by field number to prints field values

function printUsage() {
  echo 'Usage $0 -f -s'
  echo '    -f is the first field to print and -s is the second field tp print'

  exit 1
}

if ! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  printUsage
fi

echo "In this example, we print fields $1 and $2"
echo "Command: awk -F \",\" '{print \$$1, \$$2}' ../sample.txt"
echo
awk -F "," "{print \$$1, \$$2;}" ../sample.txt
