#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Arrays

# Arrays can store multiple differenct values at the 
# same time. The declare builtin will explicitly declare
# an array. There is no maximum limit on the size of an array.

# Arrays are assigned to using compound assignments of the form:
#         name=(value1 value2 … )

# An indexed array is created automatically if any variable
# is assigned to using the syntax:
#         name[subscript]=value

# The subscript must evaluate to a number.
# To explicitly declare an array, use:
#         declare -a name

# or:
#         declare -a name[subscript]

# The unset builtin is used to destroy arrays.
#         unset name[subscript]

# destroys the array element at index subscript.

#        unset name
# where name is an array, removes the entire array.
# A subscript of ‘*’ or ‘@’ also removes the entire array.

# It is possible to obtain the keys (indices) of an
# array as well as the values. ${!name[@]} and ${!name[*]}
# expand to the indices assigned in array variable name.

numbers=(1 2 3 4)

# Parameter expansion on an array name defaults to 0th element
echo The default value of array is $numbers
echo

echo The 3rd value in the array is ${numbers[2]}
echo

echo All values in the array: ${numbers[@]}
echo

echo Slicing from index 1 results in: ${numbers[@]:1}
echo

echo Slicing from index 1 to index 2 results in: ${numbers[@]:1:2}
echo

# To add a value to an array you have to add an array to the end.

numbers+=(5) # Wrapping the number 5 in parentheses will make it an array
echo All values in the array: ${numbers[@]}
echo

unset numbers[2]
echo Removing the value at index 2 results in: ${numbers[@]} 
echo

echo Deleting elements gives rise to some strange behaviours
echo Notice the indices of our array: ${!numbers[@]}
echo

numbers[0]=a
echo Changing the value at index 0 results in: ${numbers[@]}
