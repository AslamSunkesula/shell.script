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


VALIDATE(){
    if [ $1 -ne 0 ];
    then
        echo -e "Installing $2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N"
    fi
}


if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
fi

yum install git -y &>>$LOGFILE

VALIDATE $? "GIT"




# all args are in $@
