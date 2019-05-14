#!/bin/bash

#Created by Paul Bracken
#script to copy file
#24 July 2018

	#if statement to make sure that the file exists, if not then it restarts the script
	if [[ ! -f $1 ]]
		then
			echo "Please enter a valid filename"
			exit
	elif [[ $1 == $2 ]]
		then
			echo "$1 and $2 are the same."
			echo "Please choose a new file name"
			exit
	else
		echo
	fi

#input of the new filename
while true
do
		#if statement to make sure the new filename isn't in use
		if [[ ! -f $2 ]]
			then
				echo "$1 has been copied as $2"
				cp ./$1 ./$2
				exit
		#to make sure the original filename is different then the new filename.
		elif [[ $1 == $2 ]]
			then
				echo "$1 and $2 are the same."
				echo "Please choose a new file name"
				./mycp2.sh
				echo
		#if the newfile name is an existing file it will prompt before writing over file.	
		elif [[ -f $2 ]]
			then
			#used while loop if anything besides N/n/Y/y is entered the script reruns the promopt to write over
			while true
			do
				echo "Make sure the destination filename isn't already taken."
				echo "***Do you want to write over the existing file?***"
				echo "y/n?"
				read writeOverAns
				#takes input of decision to write over in y/n format (capital letters are accepted) 
				#y or Y will write over file with feedback and exit
				if [[ "$writeOverAns" == "y" ]] || [[ "$writeOverAns" == "Y" ]] 
					then
						cp ./$1 ./$2
						echo "$1 has been copied as $2"
						exit
				#if answer to write over file is n or N then it exists script
				elif [[ "$writeOverAns" == "n" ]] || [[ "$writeOverAns" == "N" ]]
					then
						exit
				else
						echo "Please enter y/n"
				fi
			done
		else
				exit
		fi
done