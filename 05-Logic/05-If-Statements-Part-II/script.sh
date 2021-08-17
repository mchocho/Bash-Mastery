#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs

# Expressions may be combined using the following
# operators, listed in decreasing order of precedence: 

# ( expression )
#     Returns the value of expression. This may be used 
#     to override the normal precedence of operators. 

# ! expression
#     True if expression is false. 

# expression1 && expression2
#     True if both expression1 and expression2 are true.

# expression1 || expression2
#     True if either expression1 or expression2 is true.

a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)

if [ $a = $b ] || [ $a = $c ]; then
  rm file2.txt file3.txt
else
  echo "Files do not match"
fi
  
