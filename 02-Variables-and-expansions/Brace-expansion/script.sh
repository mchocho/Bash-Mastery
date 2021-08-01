#!/bin/bash

# There a 2 types of lists that you can expand to within
# your braces:
#  a) String lists:
#        These can contain any set of characters or words.
#        They are useful for expanding out to months of the
#        year, or a list of names for example
#
#  b) Range lists:
#        These are useful for expanding out sequences of
#        characters that follow a particular order.
#        For example, the letters from A to Z, or the
#        number 1 to 100
#

# Let's try string lists

echo {a,69,foo,Matshepo,42}
echo

echo {jan,feb,mar,apr,may,jun}
echo

# Including any unquoted spaces will stop the shell
# from interpreting the brace expansion.
echo { jan,feb,mar,apr,may,jun}
echo "There's no expansion above due to the space included."

echo
echo {1,2,3,4,5,6,7,8,9,10}


# Now let's try range lists
echo
echo {1..10} # Prints the range of 1 - 10


echo
echo {a..z} # Prints a - z

echo
echo {A..z} # Prints the ascii range A - z 

echo
echo {0..20..2} # We can expand incrementally using an additional ".."

echo
# We can also use leading 0s so that all values have the same number of digits
echo {01..10}

echo
echo {Z..^} # Unfortunately the characters specified must have an obvious connection
