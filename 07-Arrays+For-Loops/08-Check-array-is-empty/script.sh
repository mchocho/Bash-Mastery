#!/bin/bash

# To check if a array is empty or not, we can use
# the arithmetic expansion syntax (( )) in Bash.

list=('potato', 'shotgun', 'smg')
emptyList=()
i=1

echo "Items in variable list: ${list[@]}"

if ((${#list[@]})); then
  echo "List is not empty"
else
  echo "List is empty"
fi

echo
echo "Items in variable emptyList: ${emptyList[@]}"

if [ ${#emptyList[@]} -gt 0 ]; then
  echo "Empty list is not empty"
 else
  echo "Empty list is empty"
fi
