#!/bin/bash

function printUsage() {
  echo "Usage $0 -num1 -num2 -str1 -str2"
  echo "     Where num1 is the start range and num2 is the end range. str1 is tht string to replace, str2 is the string to replace it with."

  exit 1
}

if ! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null || [ -z "$3" ]; then
  printUsage
fi

sed "$1,$2s/$3/$4/g" ../sample.txt
