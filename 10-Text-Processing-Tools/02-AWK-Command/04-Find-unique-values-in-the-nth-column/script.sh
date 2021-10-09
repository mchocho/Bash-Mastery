#!/bin/bash

printUsage() {
  echo "Usage $0 -n"
  echo "      Where -n is the field to search."

  exit 1
}

if ! [ "$1" -eq "$1" ] 2> /dev/null; then
  printUsage
fi

echo "Printing unique values from column $1."
echo "awk -F, '{a[\$$1];}END{for (i in a) print i;}' ../sample.txt"
echo
awk -F, "{a[\$$1];}END{for (i in a)print i;}" ../sample.txt
