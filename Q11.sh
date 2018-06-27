#! /bin/bash

# Q.11.Write script to determine whether given file exist or not, file name is supplied as command line argument, also check for sufficient number of command line argument

if [ $# -ne 1 ] ; then
    echo "ERORR: file name argument"
    echo "Usage: $0 filename"
    exit 1
else
    if [ -f $1 ]; then
	echo "$1 exists"
    else
	echo "$1 does NOT exist"
    fi


fi
