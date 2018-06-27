#! /bin/bash

# Q.14. Write script to implement getopts statement, your script should understand following command line argument called this script Q14,
# Q14 -c -d -m -e
# Where options work as
# -c clear the screen
# -d show list of files in current working directory
# -m start mc (midnight commander shell) , if installed
# -e { editor } start this { editor } if installed

help_Q14()   #help function
{
    echo "Usage: $0 -c -d -m -e"
    echo "Options: -m and -e are optional arguments"
    echo " -c clear the screen"
    echo " -d show list of files in current working directory"
    echo " -m start mc (midnight commander shell) , if installed"
    echo " -e { editor } start this { editor } if installed"
    exit 1
 }


# main part


if [ $# -lt 2 ]; then
    help_Q14
fi

while getopts cdme: opt
do

    case "$opt" in
	c) clear
	   echo "Clear screen. Press any key ..."
	   read;;

	d) ls
	   echo "Show list of files in current working directory. Press any key ..."
	   read;;

	m) if which mc > /dev/null; then
	       mc
	       echo "Midnight commander. Press any key ... "
	       read
	   else
	       echo "ERROR: Midnight commander is not installed. Press any key ..."
	       read
	   fi;;
	e) editor=$OPTARG
	   if which $editor > /dev/null ; then
	       $editor
	       echo "start $editor. Press any key ..."
	       read
	
	   else
	       echo "Error: $editor is not installed. Press any key ..."
	       read
	       
	   fi;;
	*) help_Q14;;
    esac
done

	   
	   
	
	   
	   






