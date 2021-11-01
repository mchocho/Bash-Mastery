#!/bin/bash

# To get the length of an array, we can use the {#array[@]} syntax in bash.

list=('pears')
list+=('potatos')
list+=('bar')
list+=('lobster')

i=1
echo "Items in array: " | tr -d '\n'

for item in "${list[@]}"; do
  echo "${item}" | tr -d '\n'

  if [ ${#list[@]} != "$i" ]; then
    echo ', ' | tr -d '\n'
  fi
  ((i++))
done

echo
echo "Length of array is ${#list[@]}"
