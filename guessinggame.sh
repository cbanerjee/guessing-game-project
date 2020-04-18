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
	userinput=$(echo $userinput | sed 's/^0*//')
	while [[ "$userinput" == "" ]] || [[ ${#userinput} -gt 19 ]] || [[ -n ${userinput//[0-9]/} ]] || [[ $userinput -gt 9223372036854775807 ]]
	do
		echo "Enter a valid number"
		read userinput
	done
	copyinp=$userinput
	userinput=$(echo $((10#$userinput)))
	if [[ ${#copyinp} -eq 19 ]] && [[ "$copyinp" != "$userinput" ]]
	then
		echo "Value exceeding the 64 gigs, please try again"
		continue
	fi
	if [[ $fileshere -gt $userinput ]]
	then
			echo "You entered $userinput and that is LESS than the actual number"
	else
			echo "You entered $userinput and that is GREATER than the actual number"
	fi
done
echo "Congratulations! You have entered the correct number of files, here are $fileshere number of files in this directory"
