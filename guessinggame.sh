#!/usr/bin/env bash
# File: guessinggame.sh
# Description: Continuously ask the user to guess the number of files in the current directory until they guess the correct number. The user
#              will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory
#              they should be congratulated.

number_of_files=$(ls -l | wc -l)

function game {
	while [[ $guess -ne $number_of_files ]]
	do
		echo ""
		echo "Enter your guess for the number of files in this directory: "
		read guess
		if [[ $guess -gt $number_of_files ]]
		then
			echo "Your guess is too high! Try again!"
		elif [[ $guess -lt $number_of_files ]]
		then
			echo "Your guess is too low! Try again!"
		else
			echo "Congratulations! You guessed the number correctly!"
		fi
	done
}

game
