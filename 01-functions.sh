#!/bin/bash

DATE=$(date +%F)

USERID=$(id -u)

r="\e[31m"

g="\e[32m"

y="\e[33m"

LOGSDIR=/c/Users/assua/shellscript-logs

script_name=$0

LOGFILE=$LOGSDIR/$script_name-$DATE.log

if [ $USERID -ne 0 ]
then
    echo -e " $r Error : Please run this script with root access"
    exit 1
fi

VALIDATE() {

    if [ $? -ne 0 ]
     then
        echo -e "Installing the $2 ......$r Failure "

    else
        echo -e "Installing the $2.....$g Success "
    fi
}

# yum install git -y &>>$LOGFILE

# VALIDATE $? " Installig the git"

# yum install nginx -y &>>LOGFILE

# VALIDATE $? " Installig the nginx"


for i in 
 do

    yum list installed $i &>>$LOGFILE

    if [ $? -ne 0 ]
     then

        echo -e "$i not installed let's install it"

        yum install $i -y &>>$LOGFILE

        VALIDATE $? "$i"
    else

        echo -e "$y $i is already installed"

    fi

done



