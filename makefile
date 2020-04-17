#This makefile would produce the README.md with title of project (line 6), date and time of running the make (line 7) and number of lines of code in the guessinggame.sh (line 8).
all: README.md

README.md:
	touch README.md
	echo "# My First Bash Project with the Guessing Game" >> README.md
	echo "### Date and Time when the make was run: `date`" >> README.md	
	echo "### The Number of lines in guessinggame.sh is `wc -l < guessinggame.sh`" >> README.md
