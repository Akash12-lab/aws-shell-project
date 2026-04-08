#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="/home/ec2-user/backup"
LOG_DIR="/var/log"

mkdir -p $BACKUP_DIR
cp $LOG_DIR/*.log $BACKUP_DIR/log_backup_$DATE.log

echo "Backup completed on $DATE" >> $BACKUP_DIR/backup.log
