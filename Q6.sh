#! /bin/bash

# Q.6.Write script to print given number in reverse order, for eg. If no is 123 it must print as 321.


if [ $# -ne 1 ] ; then
    echo "ERORR: juse one argument"
    echo "Usage: $0 number"
    exit 1
else
    echo $1 | rev
fi
