#!/bin/bash

# File test operators compare files against
# numerous predetermined values.

[[ -e today.txt ]] ; echo "Does file today.txt exists: " $?

touch today.txt > /dev/null

echo "Created temp file today.txt"

[[ -e today.txt ]] ; echo "Does file today.txt exists: " $?

# The above test tells the shell to test if file
# today.txt exists in the current directory.
# The e inside -e stands for exists.

# [ -f ]
# The above test tells the shell to test if the provided
# argument is a regular file.

[[ -f today.txt ]] ; echo "Is today.txt a regular file: " $?

# [ -d ]
# The above test tells the shell to test if the provided
# argument is a directory
[[ -d today.txt ]] ; echo "Is today.txt a directory: " $?

# [ -x ]
# This operator tests if a file exists and has execution
# permissions

[[ -x today.txt ]] ; echo "Does today.txt have a execution permissions: " $?

echo "Providing execute permisions to today.txt"
chmod 744 today.txt

[[ -x today.txt ]] ; echo "Does today.txt have a execution permissions: " $?

rm today.txt > /dev/null
echo "Deleted file today.txt"
