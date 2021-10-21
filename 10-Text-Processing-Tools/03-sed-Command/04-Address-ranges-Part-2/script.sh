#!/bin/bash

# You can also print lines at a certain interval.
# This example prints only every nth line, starting
# at line n2 using the ~, which sets the interval 
# for lines to match.


function printUsage() {
  echo "Usage $0 num1 num2"
  echo "    Where num1 is the line to start printing from and num2 is the interval to print."

  exit 1
}

if [ $# -ne 2 ]; then
  printUsage
elif (! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null); then
  printUsage
fi

sed -n "$1~$2p" ../sample.txt

exit 0
