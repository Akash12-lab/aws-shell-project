#!/bin/bash
echo "Checking for updates..."
sudo yum check-update > /home/ec2-user/update_check.txt

if [ $? -eq 100 ]; then
    echo "Updates are available! See /home/ec2-user/update_check.txt"
else
    echo "System is up to date."
fi
