#! /bin/bash

if [ $(id -u) ==0 ]; then
   echo "please run this script with root user access"
   exit 1
fi

dnf install nginx -y

if ( $? == 1 )

    echo "Nginx installation is failed"
    exit 1
else 
   
    echo "installation is success"
 fi