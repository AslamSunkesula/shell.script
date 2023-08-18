#!/bin/bash


DATE=$(date +%m-%d-%Y)

SCRIPT_NAME=$0 #$0 will tell us the script name 

LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE() {   # this is a function to check the fail or pass 

    if [ $1 -ne 0 ]; then
        echo "$1 is error"
        exit 1
    else
        echo "$2 is success"

    fi

}

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "Error: You are not a root user"
    exit 1
fi

yum install mysql -y

VALIDATE $? "Insatalling mysql" &>>$LOGFILE
#passing the 2 arguments to the validate function and $? --> passing input to the validate function to check previous command fail or pass

yum install git -y

VALIDATE $? "Insatalling  git" &>>$LOGFILE
