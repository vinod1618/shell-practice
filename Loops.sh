#!/bin/bash

mkdir -p /var/log/shell-script
Logs_file="/var/log/shell-script/$0.log"

validate (){
    if [ $1 -ne 0 ]; then
       echo "$2 installation is failed"
    else 
      echo "$2 installation is success"
    fi

}

for package_name in $@
do
   dnf list installled $package_name &>>$Logs_file
   if [ $? -eq 0 ]; then
     echo "$package_name is already installed" | tee -a $Logs_file
   else 
     dnf install $package_name -y | tee -a $Logs_file
     validate $? "$package_name"
   fi
done