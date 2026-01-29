#!/bin/bash

if [ $(id -u) -ne 0 ]; then
  echo "please run this script with root user access"
  exit 1
fi

validate (){
if [ $1 -ne 0 ]; then
  echo "$2 installation failed"
  exit 1
else
  echo "installation is success"
fi
}


dnf install nginx -y
validate $? "nginx"

#dnf install mysql -y

#dnf install nodejs -y