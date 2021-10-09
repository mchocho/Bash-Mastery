#!/bin/bash

printUsage() {
  echo "Usage $0 str1 ... strn"
  echo "    where str is a space seperated list of values to match."

  exit 1
}

if [ $# -eq 0 ]; then
  printUsage
fi

str='/'
index=1

while [ $index -le $# ]; do
  if [ $index -gt 1 ]; then
    str="${str}|"
  fi
  str="${str}${!index}"

  index=$((index + 1))
done

str="${str}/"

echo "Command: awk '${str}' ../sample.txt"
echo
echo `awk ${str} ../sample.txt`
