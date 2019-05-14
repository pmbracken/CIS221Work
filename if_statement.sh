#!/bin/bash

#Created by Paul Bracken
#in-class Assignment - if statement
#24 July 2018

#age input passed to variable ageInput
echo "Enter your age"

read ageInput

#if statement to sort age variable
if [[ $ageInput -eq 16 ]]
then
	echo "Please visit our company to take the test!"

elif [[ $ageInput -eq 15 ]]
then
	echo "Please take the training with us to learn how to drive!"

#all other responses are told to see website for services
else
	echo "Please visit our website to see our services!"
fi


