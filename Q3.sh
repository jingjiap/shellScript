#! /bin/bash

# Q.3.Write script to print nos as 5,4,3,2,1 using while loop.

i=5

while [ $i -gt 0 ] ; do
    echo $i
    i=$(expr $i - 1)
done
