#!/bin/bash

#created by Paul Bracken
#in-class assignment - case statement
#24 july 2018

#age input passed to variable ageInput
echo "Enter your age"

read ageInput

#case statement to sort age variable
case $ageInput in
	16) echo "Please visit our company to take the test!";;
	15) echo "Please take the training with us to learn how to drive!";;
	*) echo "Please visit our website to see our services!";;

esac

