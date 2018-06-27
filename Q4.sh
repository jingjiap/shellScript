#! /bin/bash

# Q.4. Write Script, using case statement to perform basic math operation as
# follows
# + addition
# - subtraction
# x multiplication
# / division
# The name of script must be 'q4' which works as follows
# $ ./q4 20 / 3, Also check for sufficient command line arguments


if [ $# -ne 3 ] ; then
    echo "ERROR: need 3 argument"
    echo "Usage: $0 number1 operation number2"
    exit 1
else
    case $2 in
	"+") echo "$1 + $3 = `expr $1 + $3`";;
	"-") echo "$1 - $3 = `expr $1 - $3`";;
	"x") echo "$1 x $3 = `expr $1 \* $3`";;
	"/") echo "$1 / $3 = `expr $1 / $3`";;
	*) echo "ERROR: Only support +, -, x, and / operations";;
    esac
 fi   
	     
