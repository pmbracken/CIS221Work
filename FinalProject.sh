#!/bin/bash

#created by Paul Bracken
#FinalProject
# 24 July 2018

#input options for choices
echo "Enter your choice at the [#?]"
#defined options for menu in the case statement
options=("who's logged on" "send a message" "add directory to current path" "monitor processes" "kill PID" "sub menu 1" "show IP address" "ping computername/IP" "sub menu 2" "x")
select opt in "${options[@]}"

do

#case statement for the menu
	
	case $opt in
		"who's logged on")
			who;;
		"send a message")
		###	enter command
			who
			echo "which user would you like to message?"
			mesg y
			read messageName
			write $messageName
					;;
		
		"add directory to current path")
			echo "what would you like to name the directory?"
			read dirInput
			mkdir $dirInput
			echo "new directory called $dirInput created at"
			
			pwd
			;;
		"monitor processes")
			ps -a | less;;
			
		"kill PID")
			echo "what process ID would you like to kill?"
			read processKill
			kill $processKill
			echo "process $processKill has been terminated"
					;;
		
		"sub menu 1")
			options2=("phone number" "US social security number" "American express credit card number")
			select opt2 in "${options2[@]}"
			do
				case $opt2 in
					"phone number")
					echo && touch number 
					echo "123.456.7890" >> number
					echo "asd.asd.wasd" >> number
					echo "123-456-7890" >> number
					echo "asd-asd-wasd" >> number
					cat number && echo
					echo "**looking for phonenumber with form: 111.222.3333"
					echo ""**Using regex: ^[0-9]\{3\}\.[0-9]\{3\}\.[0-9]\{4\\}"" && echo
					echo "answer:" && cat number | grep "^[0-9]\{3\}\.[0-9]\{3\}\.[0-9]\{4\}"
					echo && rm number
					;;
					
					"US social security number")
					echo && touch social 
					echo "123-45-7890" >> social
					echo "asd-as-wasd" >> social
					echo "123.45.7890" >> social
					echo "asd.as.wasd" >> social
					cat social && echo
					echo "**looking for social security number with form: 111-22-3333"
					echo ""**Using regex: ^[0-9]\{3\}\-[0-9]\{2\}\-[0-9]\{4\\}"" && echo
					echo "answer:" && cat social | grep "^[0-9]\{3\}\-[0-9]\{2\}\-[0-9]\{4\}"
					echo && rm social
					;;
					
					"American express credit card number")
					echo && touch card 
					echo "1234-456789-78901" >> card
					echo "asdd-asasdf-wasdd" >> card
					echo "1234 456789 78903" >> card
					echo "asdd.aswsdf.wasdd" >> card
					cat card && echo
					echo "**looking for American express card with form: 1111 222333 44455"
					echo ""**Using regex: ^[0-9]\{4\}\ [0-9]\{6\}\ [0-9]\{5\\}"" && echo
					echo "answer:" && cat card | grep "^[0-9]\{4\}\ [0-9]\{6\}\ [0-9]\{5\}"
					echo && rm card
					;;
					
					*)
					exit 0;;
				esac
			done
			;;
			
		"show IP address")
			ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1';;
			
		"ping computername/IP")
			echo "enter computer name OR IP address to ping"
			read pingName
			ping $pingName -c 4
			;;
		
		"sub menu 2")
			
			options3=("Create MyDatabase file" "show all Columns" "show the 1st & 3rd columns" "show all lines that have drwxr-xr-x permission" "show all lines that are greater than 18 characters")
			select opt3 in "${options3[@]}"
			do
				case $opt2 in
					"Create MyDatabase file")
					ls -la / > MyDataBase
					;;
					
					"show all Columns")
					awk '{print $0}' MyDataBase
					;;
					
					"show the 1st & 3rd columns")
					awk ‘{print $1” “$3}’ MyDataBase
					;;
					
					"how all lines that have drwxr-xr-x permission")
					awk ‘/drwxr-xr-x/ {print}’ MyDataBase
					;;
					
					"show all lines that are greater than 18 characters")
					awk ‘length($0) > 18’ MyDataBase
					;;
					
					*)
						#exit 0;;
				esac
			done
			;;			
			
			
			
			
		"x")
			exit;;
		*)
			echo "invalid option";;
	esac
done
