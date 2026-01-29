#!/bin/bash

## special variables

echo "All the arguments passed to script:$@"
echo "No of arg passed to script: $#"
echo "sript name is $0"
echo "Present directory $PWD"
echo "who is running $USER"
echo "Home directory of current user $HOME"
echo "PID of the script : $$"
sleep 10 &

echo "PID of recently executed backgroung process: $!"