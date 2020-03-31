README.md: 
	echo "# Guessing game Peer-graded Assignment" >README.md
	echo "" >>README.md
	date >>README.md	
	echo "" >>README.md
	< guessinggame.sh wc -l
	echo "`<guessinggame.sh wc -l` lines in guessinggame.sh" >> README.md
	
clean:
	rm README.md
