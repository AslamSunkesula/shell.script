#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ] 
then
echo "Error: You are not a root user"
exit 1
fi

yum install mysql -y

#it's our responsibility agin to check installation is success or not 

#if [ $userid -ne 0 ]
#then
#echo "Installation of mysql is error"
#    exit 2
#else
#echo "installation of mysql is success"
#fi



