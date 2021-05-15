all: readme.md

readme.md:
	echo "# Guessinggame" > readme.md
	echo "The date time makefile run was:" >> readme.md
	date >> readme.md
	echo >> readme.md
	echo "The number of lines of the guessinggame is:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
clean:
	rm readme.md
