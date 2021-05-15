#!/usr/bin/env bash

function read_numbers_from_the_user {
	read number
	filtered_number=$(echo "$number" | egrep "[^a-zA-Z]")
	while [[ $number =~ [^0-9] ]]
	do
	read number
	done
	echo $number
}

function guess_the_number {

	echo "Please, enter the number of files you are guessing"
	user_guessing=$(read_numbers_from_the_user)
	number_of_files=$(ls -l | egrep "^-" | wc -l)
	while [[ $user_guessing -ne $number_of_files ]]
	do
		if [[ $user_guessing -lt $number_of_files ]]
		then
			echo "to low, try again"
		else
			echo "to high"
		fi
	user_guessing=$(read_numbers_from_the_user)
	done
	echo "Congratulations"
}

guess_the_number
