#!/bin/bash

mkdir temp

while read line; do
 mkdir "temp/$line"
done < "folders_to_create.txt"
