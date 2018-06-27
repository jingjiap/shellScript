#! /bin/bash

# 12.Write script to determine whether given command line argument ($1) contains "*" symbol or not, if $1 does not contains "*" symbol add it to $1, otherwise show message "Symbol is not required". For e.g. If we called this script Q12 then after giving ,
# $ Q12 /bin
# Here $1 is /bin, it should check whether "*" symbol is present or not if not it should print Required i.e. /bin/*, and if symbol present then Symbol is not required must be printed. Test your script as
# $ Q12 /bin
# $ Q12 /bin/*

if [ $# -ne 1 ] ; then
    echo "ERROR: One argument"
    echo "Usage: $0 string"
    exit 1
else
    if [[ "$1" = *"*"* ]]; then
	echo "Symbol is not required"
    else
	echo $1
	printf "%s/*\n" $1
    fi
fi
	
