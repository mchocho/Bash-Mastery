#!/bin/bash

while getopts "n:f:" param
do
  case "$param" in
    f) file="$OPTARG" ;;
    n) set -x ;;
    /?) echo "Invalid case" ;;
  esac
done

case "$file" in
  *.tar.gz) tar xzf "$file" ;;
  *.gz) gzip -d "$file" ;;
  *.zip) unzip "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi
