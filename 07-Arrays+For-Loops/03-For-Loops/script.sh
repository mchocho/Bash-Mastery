#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Looping-Constructs

# The syntax of the for command is: 
#          for name [ [in [words …] ] ; ] do commands; done

# Expand words and execute commands once for each
# member in the resultant list, with name bound to
# the current member.

# The return status is the exit status of the last
# command that executes. If there are no items in the
# expansion of words, no commands are executed, and
# the return status is zero. 

# An alternate form of the for command is also supported:
#          for (( expr1 ; expr2 ; expr3 )) ; do commands ; done

for element in first second third; do
  echo This is $element
done

readarray -t files < files.txt

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "$file already exists"
  else
    touch "$file"
  fi
done
