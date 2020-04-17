#!/usr/bin/env bas
#File= guessinggame.sh
#made by Chunilal Banerjee
#This program contains one function, one loop and one if statement as per the requirements
function findfiles {
	fileshere=$(echo ls -1 | wc -l ) 
}
#This was the function
findfiles
echo "Guess the number of files in the working directory"
read userinput
while [ $fileshere != $userinput ]
do
#Here goes the loop

	if [[ $fileshere -gt $userinput ]]
	then
	#Here goes the if statement
		echo "You entered $userinput and that is LESS than the actual number"
	else
		echo "You entered $userinput and that is GREATER than the actual number"
	fi
	echo "Guess the number of files in the working directory"
	read userinput
done
echo "Congratulations! You have entered the correct number of files, here are $fileshere number of files in this directory"
#Here is complete number of lines between 20 and 50
