#!/bin/bash

# The d command deletes text from the matching pattern.

function printUsage() {
  echo "Usage $0 num1 num2"
  echo "    Where num1 and num2 represent the range of items to delete."

  exit 1
}

if ! [ "$1" -eq "$1" ] || ! [ "$1" -eq "$1" ]; then
  printUsage
fi

sed "$1,$2d" ../sample.txt
