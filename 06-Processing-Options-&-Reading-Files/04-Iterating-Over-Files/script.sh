#!/bin/bash

# Read-while loops are while loops that use the read
# command as their test command. They are commonly
# used to iterate over files line by line.

# If the read command successfully receives input, it
# will give us an exit code of 0. However, if the read
# command doesn't receive a line, it will give us a non
# zero exit code and the while loop will stop.

while read line; do
 echo "$line"
done < "$1"
# The redirection tells the read command where to read from
