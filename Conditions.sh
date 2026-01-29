#!/bin/bash

n1=100
echo "enter an number:"
read value

if [$value -gt $n1]; then
    echo "yes entered $value is greater than $n1"
fi