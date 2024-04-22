#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

echo "Script started running at :$TIMESTAMP"

VALIDATE(){
    if  [ $1 -ne 0]
    then
        echo "$2 ... Failure"
        exit 1
    else    
        echo "$2 .....Success"
    fi        
}

if  [ $USERID -ne 0 ]
then
    echo "Run this Script with Root Access"
    exit  1
else
    echo " you are super user"
fi        