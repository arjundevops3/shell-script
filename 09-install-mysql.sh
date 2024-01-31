#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo "ERROR:: run this with root access"
  exit 1 #you can give other than 0 because 0 means success
else
  echo "You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Install mysql is failed"
    exit 1
else
    echo "Installing mysql is SUCCESS"
fi