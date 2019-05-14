all: README.md

README.md:
	echo "# Guessing Game Project for The Unix Workbench" > README.md
	echo "`make` was run at $(date)" >> README.md
	echo "There are $(wc -l guessinggame.sh) lines of code in the script." >> README.md

clean:
	rm README.md
