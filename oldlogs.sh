#!/bin/bash


APP_logs=/home/centos/app-logs

DATE=$(date +%F)
#LOGSDIR=/home/centos/logs
script_name=$0
LOGFILE=/home/centos/logs/$script_name-$DATE.log

find_to_delete=$(find $APP_logs -name "*.log" -type f -mtime +14)

echo "$find_to_delete"

echo "the script stated running"

while read line;
do
   echo "Deleting  $line" &>> $LOGFILE
   rm  -rf $line        
done <<< $find_to_delete