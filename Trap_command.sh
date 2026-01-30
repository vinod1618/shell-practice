#!/bin/bash

set -e  #ERR
trap "echo "There is an error in line:$LINENO, Command: $BASH_COMMAND"" ERR

mkdir -p /var/log/shell-script
Logs_file="/var/log/shell-script/$0.log"

for package_name in $@
do
   rpm -q $package_name &>>$Logs_file
   if [ $? -eq 0 ]; then
     echo "$package_name is already installed" | tee -a $Logs_file
   else 
     dnf install $package_name -y | tee -a $Logs_file
   fi
done