#!/usr/bin/env bash
#File= guessinggame.sh
function findfiles {
	fileshere=$(find -mindepth 1 -maxdepth 1 -printf a | wc -c ) 
#	((fileshere--))
}
findfiles
userinput=-53
while [ $fileshere != $userinput ]
do
	echo "Guess the number of files in the working directory"
	read userinput
	while [[ "$userinput" == "" ]] || [[ ${#userinput} -gt 19 ]] || [[ -n ${userinput//[0-9]/} ]] || [[ $userinput -gt 9223372036854775807 ]]
	do
		echo "Enter a valid number"
		read userinput
	done
	userinput=$(echo $((10#$userinput)))
	#if [[ -n ${userinput//[0-9]/} ]] || [[ $userinput -gt 9223372036854775807 ]]
	#then
   	#	echo "Enter a valid number"
	#else
		if [[ $fileshere -gt $userinput ]]
		then
			echo "You entered $userinput and that is LESS than the actual number"
		else
			echo "You entered $userinput and that is GREATER than the actual number"
		fi
	#fi
done
echo "Congratulations! You have entered the correct number of files, here are $fileshere number of files in this directory"
