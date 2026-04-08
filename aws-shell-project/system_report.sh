#!/bin/bash
DATE=$(date +%F_%T)
REPORT="/home/ec2-user/system_report_$DATE.txt"

echo "System Report - $DATE" > $REPORT
echo "CPU Usage:" >> $REPORT
top -bn1 | grep "Cpu(s)" >> $REPORT
echo "Memory Usage:" >> $REPORT
free -h >> $REPORT
echo "Disk Usage:" >> $REPORT
df -h >> $REPORT

echo "Report saved to $REPORT"
