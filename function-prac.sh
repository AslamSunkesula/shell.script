#!/bin/bash


DATE=$(date +%F)

USERID=$(id -u)

r="\e[31m"

g="\e[32m"

LOGSDIR=/home/centos/shellscript-logs

script_name=$0

LOGFILE=$LOGSDIR/$script_name-$DATE.log


VALIDATE() {

if [ $? -ne 0 ]

then 
echo -e "$r $2 is error "

else
echo  -e "$g $2 is success "
fi

}


if [ $USERID -ne 0 ]; then
    echo -e " $r Error : Please run this script with root access"
    exit 1
fi

yum install git -y &>>$LOGFILE

VALIDATE $? " Installig the git"

yum install nginx -y &>>LOGFILE

VALIDATE $? " Installig the nginx"






