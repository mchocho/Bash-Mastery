#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#Lists

# A list is a sequence of 1 or more pipelines seperated by
# 1 of the operators ;, &, &&, or ||.
# '&&' and '||' have equal precedence, followed by ';' and
# '&' which have equal precedence

# If a command is terminated by the control operator '&',
# the shell executes the command in the background.

# Commands seperated by ';' are executed sequentially; 
# the shell waits for each command to terminate in turn. 
# The return status is the exit status of the last command 
# executed. 

# An AND list has the form
#     command1 && command2
#
# command2 is executed if, and only if, command1 returns 
# an exit status of zero 

# An OR list has the form
#     command1 || command2
#
# command2 is executed if, and only if, command1 returns 
# a non-zero exit status.
