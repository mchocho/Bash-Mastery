#!/bin/bash

readarray -t urls < urls.txt


# if ! [ -d urls ]; then
#   mkdir urls
# fi

# Another way to write the above statement

[ -d urls ] || mkdir urls

for url in "${urls[@]}"; do
  filename=$(echo "$url" | cut -d "." -f 2)
  curl "$url" --head -s > "urls/$filename.txt"
done

exit 0
