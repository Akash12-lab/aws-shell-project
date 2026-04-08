#!/bin/bash
echo "Inactive users:"
awk -F: '{ print $1,$3,$6 }' /etc/passwd | while read user uid home
do
    LAST_LOGIN=$(lastlog -u $user | awk 'NR==2 {print $4,$5,$6}')
    if [[ -z "$LAST_LOGIN" ]]; then
        echo "$user never logged in"
    fi
done
