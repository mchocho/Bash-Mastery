#!/bin/bash

# To run a bash script at a specific time we can use
# the at command (man at).

# To run this script at 10:30am just run:
#        at 10:30am -f script.sh

mkdir at_dir
touch at_dir/file{1..100}.txt

# We can also set the day we want the script to run:
#        at 9am Monday -f script.sh
#        at 9am 02/02/2022 -f script.sh
#        at 9am 21.03.2022 -f script.sh
#        at 10am tomorrow -f script.sh
#        at 10am next week -f script.sh
#        at now + 5 minutes -f script.sh
#        at now + 2 days -f script.sh

# The time must come before the day/date.
