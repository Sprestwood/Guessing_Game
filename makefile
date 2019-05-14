README.md:
	echo "# Guessing Game Project for The Unix Workbench" > README.md
	echo "## Date make was run:" >> README.md
	date >> README.md
	echo "## Number of lines contained in guessinggame.sh" >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
