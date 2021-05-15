readme.md:
	echo "# Guessinggame" > readme.md
	date >> readme.md
	echo >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
clean:
	rm readme.md
