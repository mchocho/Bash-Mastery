#!/bin/bash

# Arithmetic expansion simply replaces the syntax we write
# with the result of a mathematical expression.
# The syntax is as follows:
#          $((expression))

# The basic operators can be used
#          + - / *

x=4
y=2

echo $(( x + y ))
echo $(( x - y ))
echo $(( x / y ))
echo $(( x * y ))

# There's other operartors such as
# ** which performs exponentiation

echo $((  x ** y ))

# % which is the modulus operator

echo $(( 4 % 3 ))
