#!/bin/bash

# A test command is a command that can be used in bash to
# compare different pieces of information.
# If a test is evaluated to be true, the test will return
# an exit status of 0 otherwise 1.

# A test command has the form
#   [ test ]
#
# There must always be a space between your square brackets
# and their contents otherwise you'll get syntax errors.
#
# There's many different types of logical tests the test
# command can do, they're determined by the test operator
# used.

# i) Integer operators
#      These operators will not work on decimal numbers only
#      whole numbers.

# [ -eq ]
# The above test tells the shell to test if 2 numbers are
# eqUAL to one another.
# We can use $? to check the exit status of the last command

[ 2 -eq 2 ] ; echo "Is 2 equal to 2: $?" 

[ 1 -eq 2 ] ; echo "Is 1 equal to 2: $?"

# [ -ne ]
# The above test tells the shell to test if 2 numbers are
# nOT eQUAL to one another.

[ 1 -ne 2 ] ; echo "Is 1 not equal to 2: $?"

[ 2 -ne 2 ] ; echo "Is 2 not equal to 2: $?"

# -gt tests for gREATER tHAN
# -lt tests for lESS tHAN
# -ge tests for gREATER THAN OR eQUAL TO
# -le tests for lESS THAN OR eQUAL TO

# ii) String operators 
#       These operators are used to compare strings

a=hello
b=goodbye

# [ = ]
# The above test tells the shell to test if 2 strings are
# equal to one another.

[[ $a = $b ]] ; echo "Is str \"$a\" equal to \"$b\": $?"

# [ != ]
# The above test tells the shell to test if 2 strings are
# not equal to one another
[[ $a != $b ]] ; echo "Is str \"$a\" not equal to \"$b\": $?"

# [ -z ]
# The above test tell the shell to test if a single string
# is empty. It basically compares the string you provide
# with an empty string. Think of z as zero for empty
[[ -z $c ]] ; echo "Is str \"$c\" an empty string: " $?

[[ -z $a ]] ; echo "Is str \"$a\" an empty string: " $?

# [ -n ]
# The above test tells the shell to test if a string is not
# empty. Think of n as not zero or not empty
[[ -n $c ]] ; echo "Is str \"$c\" not empty: " $?

[[ -n $b ]] ; echo "Is str \"$b\" not empty: " $?
