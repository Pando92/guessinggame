function guessingloop {
	read number
	while [[ $number -ne $filesnumb ]]
	do
		if [[ $number -gt $filesnumb ]]
		then
			echo "Your guess is too high!"
		else
			echo "Your guess is too low!"
		fi
		echo "Try again! You will be luckier!"
		read number
	done
	echo "Congratulations! You have WON!!"
}

echo "Hello! Welcome to the guessing game!
Let's try to guess How many files are contained in the current folder.
Please insert a number:"
filesnumb=$(ls -1 | wc -l) 
guessingloop
