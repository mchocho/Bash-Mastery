#!/bin/bash

# AWK supports the following arithmetic operators:

function printUsage() {
  echo "Usage $0 n1 n2"
  echo "      Where n1 is the first operand and n2 is the second operand."

  exit 1
}

if ! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  printUsage
fi

# Addition
# Represented by plus (+) symbol which adds two or more numbers.
awk "BEGIN { print \"($1 + $2) =\", ($1 + $2) }"
echo

# Subtraction
# Represented by minus (-) symbol which subtracts two or more numbers.
awk "BEGIN { print \"($1 - $2) =\", ($1 - $2)}"
echo

# Multiplication
# Represented by asterisk (*) symbol which multiplies two or more numbers.
awk "BEGIN { print \"($1 * $2) =\", ($1 * $2)}"
echo

# Division
# Represented by slash (/) symbol which divides two or more numbers.
awk "BEGIN { print \"($1 / $2) =\", ($1 / $2)}"
echo

# Modulus
# Represented by percent (%) symbol which finds the Modulus division of two or more numbers.
awk "BEGIN { print \"($1 % $2) =\", ($1 % $2)}"
echo

echo "Variables can also be defined within the command:"
awk 'BEGIN { a = 42; b = 69; print "(a + b) =", (a + b) }'
