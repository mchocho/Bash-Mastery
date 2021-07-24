#!/usr/bin/bash

# Author: Malesela Chocho
# Date Created: 24/07/2021
# Lasr Modifed: 24/07/2021

# Description
# Changing the permissions of a script prevents others
# from adding malicous code into our scripts.
#
# The following command:
#      chmod 744 script.sh
# Changes the script permissions so that only the file owner
# has all permissions and everyone else can only read the file.

#      chmod 777 script.sh
# The above will provide all permissions to the to all users. 

#      chmod 755 script.sh
# The above will allow other users to read and run the script
# but not to edit it.

#      chmod 000 script.sh
# The above will revoke permissions for all users including the
# file owner.

echo "This is our first script"

exit 0
