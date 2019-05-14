#!/bin/bash

#created by Paul Bracken
#FinalProject
# 24 July 2018



while [ "$inputVar" != "x" ]
	do
		read inputVar

		echo "	1) who"
		echo "	2) Send a message"
		echo "	3) Add a directory to PATH"
		echo "	4) monitor proccesses"
		echo "	5) kill PID"
		echo "	6) Sub menu 1"
		echo "	7) Show IP address"
		echo "	8) Ping Computer/IP"
		echo "	9) SUb menu 2"


	if [ "$inputVar" == "1" ]
			then
				who
		elif [ "$inputVar" == "2" ]
			then
				who
				echo "which user would you like to message?"
				mesg y
				read messageName
				write $messageName
		elif [ "$inputVar" == "3" ]
			then
				#ENter PATH command
		elif [ "$inputVar" == "4" ]
			then
				ps -a | less
		elif [ "$inputVar" == "5" ]
			then
				echo "what process ID would you like to kill?"
				read processKill
				kill $processKill
				echo "Process $processKill has been terminated"
		elif [ "$inputVar" == "6" ]
			then
				while [ "inputVarSub2" != "x" ]
					do
					
					echo "	1) check phone number"
					echo "	2) check social security number"
					echo "	3) check American express card"
					echo "	x) exit"
					
					read inputVarSub2
					
						if [ "$inputVarSub2" == "1" ]
							then
								echo "phone number"
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
						
						elif [ "$inputVarSub2" == "2" ]
							then
								echo "US social security number"
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
							
						elif[ "$inputVarSub2" == "3" ]

								echo "American express credit card number"
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
					
					
						elif[ "inputVarSub2" == "x" ]
							then
								echo
						else
							echo
							
		elif [ "$inputVar" == "7" ]
			then
				ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
		elif [ "$inputVar" == "8" ]
			then
				echo "enter computer name OR IP address to ping"
				read pingName
				ping $pingName -c 4
		elif [ "$inputVar" == "9" ]
			then
				while [ "$inputVarSub3" != "x" ]
				do
				
					read inputVarSub3

					echo "	1) Create MyDataBase File"
					echo "	2) Show all Comumns"
					echo "	3) Show the 1st and 3rd columns"
					echo "	4) how all lines that have drwxr-xr-x permission"
					echo "	5) show all lines that are greater than 18 characters"
					echo "	x) exit" 


					if[ "$inputVarSub2" == "1" ]
					elif[ "$inputVarSub2" == "2" ]
					elif[ "$inputVarSub2" == "3" ]
					elif[ "$inputVarSub2" == "4" ]
					elif[ "$inputVarSub2" == "5" ]
					elif[ "$inputVarSub2" == "x" ]







				
		elif [ "$inputVar" == "x" ]
			then
				exit
		else
			echo "invalid input"
	done
	
	
	
	case $opt in

		
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
