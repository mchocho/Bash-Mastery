#!/bin/bash

function printUsage() {
  echo "Usage $0 -s -e" >&2
  echo "      where -s specifies the start positions and -e specifies the end position." >&2
  
  exit 0
}

if ! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  printUsage
fi

echo "We print bytes within the range $1 and $2"
echo
echo "cut -b $1-$2 ../../sample.txt"


echo `cut -b $1-$2 ../../sample.txt`
