#!/bin/bash

#created by Paul Bracken
#ExtraCredit2
# 24 July 2018


REGEX="^[0-9]\{3\}\-[0-9]\{2\}\-[0-9]\{4\}"


while true
do 
	echo "Enter a Social Security Number in the format 111-22-3344:"
	read socialVar
	if [[ "$socialVar" =~ $REGEX ]]
		then
		echo "This matches the Social Security Number format" && echo
	elif [[ "$socialVar" != $REGEX ]]
		then
		echo "This does not match the Social Security Number format. Please try again" && echo
	else
		exit
	fi
done