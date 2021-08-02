#!/bin/bash

# Quoting is about removing special meanings
# https://www.gnu.org/software/bash/manual/bash.html#Quoting

# There are 3 types of Quoting

# i) Backslash (\):
#       Removes special meaning from next character.

# ii) Single Quotes (''):
#       Removes special meaning from all characters inside.

# iii) Double Quotes (""):
#       Removes special meaning from all except dollar sign
#       ($) and backticks (`)

echo john \& jane # Removing the backslash gives the ampersand it's special meaning (Run in background)
echo


filepath=C:\\Users\\matshepo\\Documents
echo $filepath
echo


filepath='C:\Users\matshepo\Documents'
echo $filepath
echo

filepath='C:\Users\$USER\Documents' # Won't expand the value of $USER
echo $filepath
echo


filepath="C:\Users\\$USER\Documents"
echo $filepath
