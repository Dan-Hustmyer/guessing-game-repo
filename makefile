create-readme: guessinggame.sh
	touch README.md
	echo "**Project Name** - Week 4 Guessing Game" >> README.md
	echo "" >> README.md
	echo "Lines of code in guessinggame.sh " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo " " >> README.md
	echo "*Make run date/time: $$(date)*" >> README.md

clean:
	rm README.md
