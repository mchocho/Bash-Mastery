#!/bin/bash

# To substitute a delimiter with another delimiter
# We simply use the ‘–output-delimiter ‘ option

function printUsage() {
  echo "$0 -d -n"
  echo "    Where d is the delimeter to replace and -n is the new delimiter to use."

  exit 1
}

if [ -z "$1" ] && [ "$1" -ne " " ] 2 > /dev/null && [ -z "$1" ] && [ "$2" -ne " " ] 2 > /dev/null; then
  printUsage
fi

echo "cut -d \"$1\" -f 1,2 ../sample.txt --output-delimiter=\"$2\" "
echo 

echo `cut -d "$1" -f 1,2 ../sample.txt --output-delimiter=$2`
