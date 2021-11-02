#!/bin/bash

# To generate a random number, you can use the $RANDOM value

echo "A nice random value: $RANDOM"

# The nominal range of the results is 0 – 32767
# It is the range of a signed 16-bit integer.
# It is not very usable as it stands.

# While the returned number seems random, it is 
# actually influenced by how the random entropy
# variable (RANDOM=) is initialized.

RANDOM=1

echo
echo "Random value (after entropy is set to 1): $RANDOM"
echo "Next random value: $RANDOM"
echo

RANDOM=1

echo "Reset entropy to 1 again: $RANDOM"
echo "Next random value: $RANDOM"

# The RANDOM=$(date +%s%N | cut -b10-19) command is
# a much better random generator entropy seeder based
# on second and nanosecond time.

RANDOM=$(date +%s%N | cut -b10-19)

echo
echo "Random value (after random generator was seeded with current second and nanosecond time): $RANDOM"
echo "next random value: $RANDOM"


RANDOM=$(date +%s%N | cut -b10-19)

echo
echo "Reset entropy to current second and nanosecond time again: $RANDOM"
echo "next random value: $RANDOM"
echo

# Selecting random numbers in a range is simple.

if ! [ "$1" -eq "$1" ] 2> /dev/null || ! [ "$2" -eq "$2" ] 2> /dev/null; then
  echo "You can specify a range of numbers to generate a random number."
  echo "By default our range will be between 1 and 42"
  echo "Random number between 1 and 42: $(( RANDOM % 42 + 1))"
else
  range=$(( $2 - $1 + 1 ))
  result=$(( (RANDOM % range) + $1 ))
  echo "Random number between $1 and $2: $result"
fi
