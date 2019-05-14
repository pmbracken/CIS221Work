#!/bin/bash

#created by Paul Bracken
#create a menu
# 24 July 2018

#input options for choices
echo "Enter your choice: "
#defined options for menu in the case statement
options=("Ping" "Who" "List Files" "Exit")
select opt in "${options[@]}"
do

#case statement for the menu
	case $opt in
		"Ping")
			ping 8.8.8.8 -c 4;;
		"Who")
			who;;
		"List Files")
			pwd
			ls;;
		"Exit")
			exit;;
		*)
			echo "invalid option";;
	esac
done
