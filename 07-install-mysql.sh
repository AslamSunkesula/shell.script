#!/bin/bash


userid=$(id -u)

if [ $userid -ne 0 ] 
then
echo "Error: You are not a root user"
exit 1
fi

yum install mysqll -y

#it's our responsibility agin to check installation is success or not 




