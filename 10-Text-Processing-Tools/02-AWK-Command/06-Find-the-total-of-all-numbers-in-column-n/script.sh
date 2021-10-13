#!/bin/bash

function printUsage() {
  echo "Usage $0 -n"
  echo "   Where -n is the is the column to use for finding the sum total."

  exit 1
}

if ! [ "$1" -eq "$1" ] 2> /dev/null; then
  printUsage
fi

str=''

echo "We're summing field $1"
awk '{print;}' ../sample.txt

echo
awk -F"," "{x+=\$$1}END{print x}" ../sample.txt
