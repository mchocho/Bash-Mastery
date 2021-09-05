#!/bin/bash

# The crontab is used to automate all types
# of tasks on Linux systems.

# man cron
# man crontab
# https://linuxize.com/post/scheduling-cron-jobs-with-crontab/
# https://linuxhandbook.com/crontab/

# You write rows to the cron table when entering
# a crontab command. Each ‘*’ asterisk represents
# a segment of time and a corresponding column in
# each row.

# Each row contains scheduling information for a
# single command or script. Every row that you add
# into your crontab will be treated as a seperate
# scheduled job

# Each of these rows are broken down into 6 columns.
# The first 5 columns are scheduling information and
# respectively represent the exact time you would like 
# the job to run at:

# (minute) (hour) (day of the month) (month) (day of the week)
#  [0-59]  [0-23]      [1-31]        [1-12]       [0-6]

# Day Names 0-6 begin with Sunday. You can also use an
# asterisk to represent all of the options that are valid
# for a particular column. The number of spaces between 
# each values doesn't matter as long as there is some.

# The 6th column is the command or script that we want
# to be run at that scheduled time.


date >> cron_output.txt
