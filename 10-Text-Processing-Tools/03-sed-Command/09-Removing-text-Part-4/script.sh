#!/bin/bash

# You can keep the lines containing the word and
# only remove the word itself.

# The s command, instructs sed to substitute

# The following syntax:

# s/regexp/replacement/

# Attempts to match regexp against the pattern space.
# If successful, replace  that portion matched
# with replacement. You can also replace it with
# nothing.

# The /g command tells sed that it is global.
# Text should be replaced in the entire line. 
# Without this, only the first match in each line
# is replaced.

function printUsage() {
  echo "Usage $0 str1 [str2]"
  echo "    Where str1 is the pattern to search for and str2 (if provided) is the string to replace the pattern with."

  exit 1
}

if [ -z "$1" ]; then
  printUsage
fi

sed "s/$1/$2/g" ../sample.txt
