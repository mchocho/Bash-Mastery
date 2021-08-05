#!/bin/bash

# Here-documents is actually a redirection instruction
# which tells the shell to read input from the current
# source until a line containing only word is seen.
# All lines read up to that point are then used as the
# standard input (or file descriptor n if n is specified) 
# for a command.

# https://www.gnu.org/software/bash/manual/bash.html#Here-Documents

# The format of here-document is:

# [n]<<[-]word
#        here-document
# delimiter

cat << goodbye

You're now reading from a here-document with stdin.
It will end once it hits the line containing only goodbye.
Unfortunately stdin immediately closees when executed within bash script.
You can also try cat<<goodbye in the command line

Anyways, goodbye!

goodbye

exit 0
