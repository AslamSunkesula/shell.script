#!/bin/bash

VALIDATE() {

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

VALIDATE $? "Insatalling my SQL"

yum install git -y

VALIDATE $? "Insatalling  git"
