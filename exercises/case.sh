#!/bin/bash

#Case statement voorbeeld
case "$VAR" in
	pattern_1)
		# commands go here
		;;
	patter_N)
		# commands goe here
		;;
esac

#Case voorbeeld 2
case "$1" in
	start|START)
		# commands go here
		echo "Start statement"
		;;
	stop|STOP)
		# commands goe here
		echo "Stop statement"
		;;
	*)
		echo "Usage: $0 start|stop" ; exit 1
		;;
esac

#Case voorbeeld 3
read -p "Enter y or n: " ANSWER
case $ANSWER in
	[yY]|[yY][eE][sS])
		echo "You answerd yes."
		;;
	[nN]|[nN][oO])
		echo "You answerd no."
		;;
	*)
		echo "Invalid answer, use Y or N"
		;;
esac