#! /bin/bash

#Q.2.Write Script to find out biggest number from given three nos. Nos are supplies as command line argument. Print error if sufficient arguments are not supplied.

if [ $# -ne 3 ] ; then
    echo "ERROR: Three arguments"
    echo "Usage: $0 number1 number2 number3"
    exit 1
else
    max=0
    for i in $@; do
	if [ $i -gt $max ] ; then
	    max=$i
	fi
    done
    echo "The max number is $max"
fi
	
