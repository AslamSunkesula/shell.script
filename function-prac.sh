#!/bin/bash

USERID=$(id -u)

r="\e[31m"

g="\e[32m"

if [ $USERID -ne 0 ]; then
    echo -e " $r Error : Please run this script with root access"
    exit 1
fi

yum install gi -y 


if [ $? -ne 0 ]

then 
echo -e "$r Installing the git is error "

else
echo  -e "$g Installing the git is success "
fi



