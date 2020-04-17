#!/usr/bin/env bash
#File= guessinggame.sh
#This program contains one function, one loop and one if statement as per the requirements
function findfiles {
	fileshere=$(find -mindepth 1 -maxdepth 1 -printf a | wc -c ) 
#	((fileshere--))
}
#This was the function
findfiles
echo "Guess the number of files in the working directory"
read userinput
while [[ "$userinput" == "" ]]
do
	echo "Enter a valid number"
	read userinput
done
userinput=$(echo $((10#$userinput)))
while [ $fileshere != $userinput ]
do
#Here goes the loop
	if [[ -n ${userinput//[0-9]/} ]] || [[ $userinput -lt 0 ]] || [[ $userinput -gt 9223372036854775807 ]]
	then
   		echo "Enter a valid number"
	else
		if [[ $fileshere -gt $userinput ]]
		then
		#Here goes the if statement
			echo "You entered $userinput and that is LESS than the actual number"
		else
			echo "You entered $userinput and that is GREATER than the actual number"
		fi
	fi
	echo "Guess the number of files in the working directory"
	read userinput
	while [[ "$userinput" == "" ]]
	do
		echo "Enter a valid number"
		read userinput
	done
	userinput=$(echo $((10#$userinput)))
done
echo "Congratulations! You have entered the correct number of files, here are $fileshere number of files in this directory"
#Here is complete number of lines between 20 and 50
