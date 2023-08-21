#!/bin/bash

red="\e[31m"

green="\e[32m"

nocolor="\e[0m"

y="\033[0;33m"

DATE=$(date +%F)

SCRIPT_NAME=$0 #$0 will tell us the script name

LOGSDIR=/home/centos/shellscript-logs

LOGFILE=$LOGSDIR/$0-$DATE.log

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "  $red Error: You are not a root user $nocolor"
    exit 1
fi

VALIDATE() { # this is a function to check the fail or pass

    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 is ---- $red error $nocolor "
        exit 1
    else
        echo -e "Installing $2 is ----  $green success $nocolor"

    fi

}

for i in $@; do

    yum list installed $i&>>$LOGFILE

    if [ $? -ne 0 ]; then
        echo " $i is not installed , let's install it "

        yum install $i -y &>>$LOGFILE
         VALIDATE $? "$i"

    else

        echo -e "$y $i is already installed $nocolor"
    fi

done 

# yum install mysql -y

# VALIDATE $? "Insatalling mysql" &>>$LOGFILE
# passing the 2 arguments to the validate function and $? --> passing input to the validate function to check previous command fail or pass

# yum install git -y

# VALIDATE $? "Insatalling  git" &>>$LOGFILE
