#This makefile would produce the readme.md with title of project (line 6), date and time of running the make (line 7-9) and number of lines of code in the guessinggame.sh (lines 10-12).
all: README.md

README.md:
	touch README.md
	echo "# My First Bash Project with the Guessing Game" >> README.md
	now=$(date)
	echo "### Date and Time when the make was run:" >> README.md
	echo "$today">> README.md
	lines=$(wc -l < guessinggame.sh)
	echo "### The Number of lines in guessinggame.sh is :" >> README.md
	echo "$lines" >> README.md
