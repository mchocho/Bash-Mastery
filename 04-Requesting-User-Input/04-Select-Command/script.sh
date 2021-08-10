#!/bin/bash

#    select name [in words …]; do commands; done 

# The select construct allows the easy generation of menus.
# The list of words following in is expanded, generating a
# list of items.

# The set of expanded words is printed on the standard error 
# output stream, each preceded by an index number.

# If the ‘in words’ is omitted, the positional parameters 
# are printed, similar to specifying "$@".

# The PS3 prompt (a variable exclusively used for select statements)
# is then displayed and a line is read from the standard input.
# If the line consists of a number corresponding to one of the 
# displayed words, then the value of name is set to that word.
# If the line is empty, the words and prompt are displayed again.

# The line read is saved in the variable REPLY. This value is set even
# the expected input isn't correct.

# The commands are executed after each selection until a break 
# command is executed.

# https://www.gnu.org/software/bash/manual/bash.html#Bash-Builtins

PS3="What is the day of the week?: "
select today in mon tue wed thu fri sat sun;
do #Indicates the beginning of a list of commands to run after user provides input
  echo "The day of week is $today"
  break
done


read -p "Enter a first and last name: " first last

PS3="Hi $first. What type of phone you would like?: "
select phone in headset handheld;
do
  echo "You have selcted a $phone phone."
  break
done

PS3="What department do you work in $first? "
select department in finance sales "customer service" engineering;
do
  echo "You have selected $department"
  break
done
