#! /bin/bash

# Q.13. Write script to print contains of file from given line number to next given number of lines. For e.g. If we called this script as Q13 and run as
# $ Q13 5 5 myf , Here print contains of 'myf' file from line number 5 to next 5 line of that file.


if [ $# -ne 3 ] ; then
    echo "Error: three arguments"
    echo "Usage: $0 number1 number 2 filename"
    exit 1
else
    if [ -f "$3" ] ; then
	n=$(expr $1 + $2)
	head -n $n $3 | tail -n $2
    else
	echo "ERROR: $3 does not exist"
	exit 1
    fi
fi
    
