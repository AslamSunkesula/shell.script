#!/bin/bash

USERID=$(id -u)

r="\e[31m"

g="\e[32m"

if [ $USERID -ne 0 ]; then
    echo " $r Error : Please run this script with root access"
    exit 1
fi
