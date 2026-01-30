#!/bin/bash

Logs_file="/var/log/shell-script/$0.log"

validate (){
    if [ $1 -ne 0 ]; then
       echo "$2 installation is failed"
    else 
      echo "$2 installation is success"
    fi

for package_name in $@
do
   dnf install $package_name -y | tee -a $Logs_file
done