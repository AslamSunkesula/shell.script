#!/bin/bash
APP_logs=/home/centos/app-logs

DATE=$(date +%F)
LOGSDIR=/home/centos/logs
script_name=$0
LOGFILE=$LOGSDIR/$script_name-$DATE.log 


find_to_delete=$(find $APP_logs -name "*.log" -type f -mtime +14)

echo"$find_to_delete" &>>$LOGFILE


    



