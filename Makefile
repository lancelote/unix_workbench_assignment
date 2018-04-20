readme:
	echo "# Guessing Game\n" > README.md
	echo "**Makefile was executed:** $(shell date)" >> README.md 
	echo "**Lines in guessinggame.sh:** $(shell wc -l  guessinggame.sh | grep -Eo "[0-9]+")" >> README.md
	echo "**Tested on:** macOS" >> README.md

clean:
	rm README.md
