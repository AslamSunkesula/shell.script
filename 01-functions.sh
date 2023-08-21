#!/bin/bash

DATE=$(date +%F)

USERID=$(id -u)

r="\e[31m"

g="\e[32m"

y="\e[33m"

LOGSDIR=/c/Users/assua/shellscript-logs

script_name=$0

LOGFILE=$LOGSDIR/$script_name-$DATE.log


VALIDATE() {

    if [ $? -ne 0 ]
     then
        echo -e "$2 ......$r Failure "

    else
        echo -e "$2.....$g Success "
    fi
}




if [ $USERID -ne 0 ]
then
    echo -e " $r Error : Please run this script with root access"
    exit 1
fi


yum install ngnix -y  &>>$LOGFILE


VALIDATE $? "installing the nginx"



# yum install git -y &>>$LOGFILE

# VALIDATE $? " Installig the git"

# yum install nginx -y &>>LOGFILE

# VALIDATE $? " Installig the nginx"



