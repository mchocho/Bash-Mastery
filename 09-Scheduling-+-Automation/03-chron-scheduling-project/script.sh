#!/bin/bash

apt update -y
apt upgrade -y

# Check if a reboot is required, if so then reboot the system
if [ -f /var/run/reboot-required ]; then
 reboot
fi
