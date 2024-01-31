#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo "ERROR:: run this with root access"
else
  echo "You are root user"
fi