#!/bin/bash

if [ $(id -u) -ne 0 ]; then
  echo "please run this script with root user access"
  exit 1
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
  echo "nginx installation failed"
  exit 1
else
  echo "installation is success"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "mysql installation failed"
   exit 1
else
   echo "mysql installation is success"
fi

dnf install noedjs -y

if [ $? -ne 0 ]; then
   echo "nodejs installation failed"
   exit 1
else
   echo "nodejs installation is success"
fi