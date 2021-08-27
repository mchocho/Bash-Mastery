#!/bin/bash

readarray -t urls < urls.txt

if ! [ -d urls ]; then
  mkdir urls
fi

for url in "${urls[@]}"; do
  filename=$(echo "$url" | cut -d "." -f 2)
  curl "$url" --head -s > "urls/$filename.txt"
done

exit 0
