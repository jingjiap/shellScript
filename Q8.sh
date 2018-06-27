#! /bin/bash

# Q.8.How to perform real number (number with decimal point) calculation in Linux

if [ $# -ne 3 ] ; then
    echo "ERORR: 3 arguments for real number calculation"
    echo "Usage: $0 number1 operation number2"
    exit 1
else
    case $2 in
	"+") printf "%.2f\n" $(echo $1 + $3 | bc -l);;
	"-") printf "%.2f\n" $(echo $1 - $3 | bc -l);;
	"*") printf "%.2f\n" $(echo $1 \* $3 | bc -l);;
	"/") printf "%.2f\n" $(echo $1 / $3 | bc -l);;
	*) echo "ERROR: only supppoert +, -, * and / operations"
	   exit 1;
    esac

fi
