#!/bin/bash

# To print characters located at different positions
# we just have to specify the locations seperated by
# comma (with no spaces).

function printUsage(){
  echo "Usage: $0 -C" >&2
  echo "    -C specifies the different index positions (seperated by commas) to print." >&2
  
  return 0
}

if [ "$#" -ne 1 ]; then
  printUsage
  exit 1
fi

echo "We will print characters located at $1"
echo
cut -c "$1" ../../sample.txt
