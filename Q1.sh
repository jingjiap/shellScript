#! /bin/bash

#Q.1. How to write shell script that will add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage

if [ $# -ne 2 ] ; then
    echo "ERROR: Need at least 2 number argument"
    echo "Usage: $0 number1 number2"
    exit 1
else
    sum=$(expr $1 + $2)
    echo $sum
fi    
