#!/bin/bash


userid=$(id -u)

if [ $userid -ne 0 ] 
then
echo "Error: You are not a root user"
exit 1
fi

yum install mysql -y




