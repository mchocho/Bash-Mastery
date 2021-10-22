#!/bin/bash

# We can easily replace any text with sed.
# The syntax to replace text is as follows:

# sed 's/str1/str2/g' file.txt

# The command contains:
#   * The s command, which instructs sed to substitute
#   * Followed by the text pattern to match (str1)
#   * Followed by the text pattern to replace (str2)
#   * The /g command tells sed that it is global.
#       text should be replaced in the entire line. 
#       Without this, only the first match in each
#       line is replaced

function printUsage() {
  echo "Usage $0 str1 str2"
  echo "   Where str1 is the string to replace and str2 is the string"

  exit 1
}

if [ $# -ne 2 ]; then
  printUsage
elif [ -z "$1" ] || [ -z "$2" ]; then
  printUsage
fi

sed "s/$1/$2/g" ../sample.txt | grep "$2"

exit 0
