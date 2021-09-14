#!/bin/bash

function printUsage() {
  echo "Usage $0 -n" >&2
  echo "      -n specifies the number of bytes to print." >&2

  exit 1
}

if ! [ "$1" -eq "$1" ] 2> /dev/null; then
  printUsage
fi

echo "We will print the first $1 bytes"
echo
echo "cut -b -$1 ../../sample.txt"

echo `cut -b -$1 ../../sample.txt`
