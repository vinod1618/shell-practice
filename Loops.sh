#!/bin/bash

Logs_file="/var/log/shell-script/$0.log"

for package_name in $@
do
   dnh install $package_name -y | tee -a $Logs_file
done