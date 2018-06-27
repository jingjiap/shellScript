#! /bin/bash

# Q.5.Write Script to see current date, time, username, and current directory

echo "date is $(date +"%m/%d/%Y")"
echo "time is $(date +"%T")"
echo "username is $USER"
echo "current directory is `pwd`"
