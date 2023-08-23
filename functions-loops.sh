#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/home/centos/logs
script_name=$0
LOGFILE=$LOGSDIR/$script_name-$DATE.log

#LOGFILE=/tmp/$script_name-$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

VALIDATE() {

    if [ $? -ne 0 ]
     then

        echo -e " $N Installing the $R my sql is failure"

    else

        echo -e "$N installation $G my sql is success"

    fi

}

if [ $USERID -ne 0 ]

 then

    echo -e " $R Error : Please try with the sudo access "
    exit 1
fi

yum install git -y &>>$LOGFILE

# all args are in $@
for i in $@; do
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    
     then
        echo "$i is not installed, let's install it"
        yum install $i -y &>>$LOGFILE

        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi

    #yum install $i -y
done

# all args are in $@
