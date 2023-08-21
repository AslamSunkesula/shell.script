#!/bin/bash

USERID=$(id -u)

r="\e[31m"

g="\e[32m"


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

yum install git -y 

VALIDATE $? " Installig the git"

yum install nginx -y 

VALIDATE $? " Installig the nginx"






