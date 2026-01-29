#!/bin/bash
names= ("vinod" "suresh")
today=$(date)
echo "$today"

#another example

Script_started=$(date +%s)
echo "$today"

sleep  10

Script_end=$(date +%s)

Timetaken=$((Script_end-Script_started))
echo "script took $Timetaken seconds to run"