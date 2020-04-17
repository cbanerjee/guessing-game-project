#!/usr/bin/env bash
#File= guessinggame.sh
function findfiles {
	fileshere=$(find -mindepth 1 -maxdepth 1 -printf a | wc -c ) 
#	((fileshere--))
}
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
	if [[ -n ${userinput//[0-9]/} ]] || [[ $userinput -lt 0 ]] || [[ $userinput -gt 9223372036854775807 ]]
	then
   		echo "Enter a valid number"
	else
		if [[ $fileshere -gt $userinput ]]
		then
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
