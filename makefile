README.md: 
	echo "# Guessing game Peer-graded Assignment" >README.md
	echo "" >>README.md
	date >>README.md	
	echo "" >>README.md
	cat guessinggame.sh |tr -d " \t"|grep . |grep -v ^#|wc -l
	echo `cat guessinggame.sh |tr -d " \t"|grep . |grep -v ^#|wc -l` lines of code in guessinggame.sh >> README.md
	
clean:
	rm README.md
