#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/c/Users/assua/shellscript-logs

script_name=$0
LOGFILE=$LOGSDIR/$script_name-$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $USERID -ne 0 ] 

then 

echo " Error : Please try with the sudo access "
exit 1
fi

yum install git -y 







# all args are in $@
