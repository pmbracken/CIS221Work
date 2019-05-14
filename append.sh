#!/bin/bash

# Created by Paul bracken
# Append to file
# 6 August 2018

#creates the empty string.txt file to append to (Step 1)
touch string.txt

#displays message to append and takes user input (Step 2, 3, 4)
echo "Please enter a string to append to the string.txt file"
read inputVar && echo $inputVar >> string.txt