#!/bin/bash

mkdir -p /var/log/shell-script
Logs_file="/var/log/shell-script/$0.log"


if [ $(id -u) -ne 0 ]; then
  echo "please run this script with root user access" | tee -a $Logs_file
  exit 1
fi

validate (){

if [ $1 -ne 0 ]; then
  echo "$2 installation failed" | tee -a $Logs_file
  exit 1
else
  echo "$2 installation is success" | tee -a $Logs_file
fi

}

dnf install nginx -y &>> $Logs_file
validate $? "nginx" 
dnf install mysql -y  &>> $Logs_file 
validate $? "mysql"
dnf install nodejs -y  &>> $Logs_file
validate $? "nodejs"