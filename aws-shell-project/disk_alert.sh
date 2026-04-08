#!/bin/bash
THRESHOLD=80
df -h | grep '^/dev/' | while read line
do
    USAGE=$(echo $line | awk '{print $5}' | sed 's/%//')
    PARTITION=$(echo $line | awk '{print $6}')
    if [ $USAGE -ge $THRESHOLD ]; then
        echo "Warning: $PARTITION is $USAGE% full!"
    fi
done
