  README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "## Date and time at which make was run:" >> README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of lines in guessinggame.sh:" >> README.md
	echo "" >> README.md
	wc -l < guessinggame.sh >> README.md
