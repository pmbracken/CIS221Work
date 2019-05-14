#!/bin/bash

#sets working directory
cd /home/paul/Desktop/Lab_chmod

#lists the files in the directory
echo "Within the Lab_chmod folder, the files are:"
find . -type f | sort

#counts and displays the files in the directory 
numFile=$(find . -type f | wc -l)
echo There are $numFile files in the Lab_chmod directory

echo 

#lists the sub folders within the directory
echo "Within the Lab_chmod folder, the folders are:"
find . -mindepth 1 -maxdepth 1 -type d | sort

#counts the sub folders within the directory
numFolder=$(find . -mindepth 1 -maxdepth 1 -type d | wc -l)
echo There are $numFolder folders within the Lab_chmod dirctory

echo

#finds and lists files with no permissions for other
echo "The files with no Other permissions are:"
find . ! -perm /o+rwx -type f | sort

#lists the number of files or folders with no permissions for other
numNoOther=$(find . ! -perm /o+rwx -type f | wc -l)
echo There are $numNoOther files with no permissions for other

echo


#lists the files with no permissions for group
echo "The files with no permissions for Group are: "
find . ! -perm /g+rwx -type f | sort

#shows the number of files with no permissions for group
numNoGrp=$(find . ! -perm /g+rwx -type f | wc -l)
echo There are $numNoGrp files with no permissions for Group
