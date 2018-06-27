#! /bin/bash

# Q.7.Write script to print given numbers sum of all digit, For eg. If no is 123 it's sum of all digit will be 1+2+3 = 6.

if [ $# -ne 1 ] ; then
    echo "ERROR: one number argument"
    echo "Usage: $0 number"
    exit 1
else
    x=$1
    s=0
    a=`expr $x / 10`
    while [ $a -ne 0 ] ; do
	r=`expr $x % 10` ## remainde
	s=$(expr $s + $r)
	x=$a
	a=`expr $x / 10`
    done

     s=$(expr $s + $x)
     echo "Sum is $s"
 fi    

	  
