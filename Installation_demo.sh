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