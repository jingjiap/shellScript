#! /bin/bash

# Q.15. Write script called sayHello, put this script into your startup file cal# led .bash_profile, the script should run as soon as you logon to system, and i# t print any one of the following message in infobox using dialog utility, if i#nstalled in your system, If dialog utility is not installed then use echo state#ment to print message : -
# Good Morning
# Good Afternoon
# Good Evening , according to system time.


sayHello()
{
    hour=$(date | cut -c 12-13)
    if [ $hour -lt 12 ] ; then
	echo "Good Morning"
    elif [ $hour -lt 18 ] ; then
	echo "Good Afternoon"
    else
	echo "Good Evening"
    fi
}

sayHello
	   
