#!/bin/bash

echo "enter your name:"
read USER_NAME
echo "enter your email id:"
read EMAIL_ID
echo "enter your password"
read -s PASSWORD                 # -s option will make you not display what you are typing when you are entereing the characters on the screen
echo "your name is: $USER_NAME"
echo "Your emai id is:$EMAIL_ID "
echo "your password is :$PASSWORD"