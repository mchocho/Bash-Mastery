#!/bin/bash

# The p command prints out matching lines.

# The below example uses the regex /Method/ to find
# text containing the case-sensitive text Method, 
# followed by the p command to print matching lines.

# The -n option is being used here to disable the 
# input text’s automatic output so that only matching 
# lines are output.

function printUsage() {
  echo "Usage $0 str"
  echo "    Where str is the string to search for."

  exit 1
}

if [ -z "$1" ]; then
  printUsage
fi

sed -n "/$1/p" ../sample.txt
