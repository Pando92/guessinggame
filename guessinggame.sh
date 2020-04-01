function formattest {
	while ! [[ $number =~ ^[0-9]+$ ]]
	do
		echo "Invalid format. Insert an integer (example "3")"
		read number
	done
}

function magnitudetest {
	if [[ $number -gt $filesnumb ]]
	then
		echo "Your guess is too high!"
	else
		echo "Your guess is too low!"
	fi
}

echo "Hello! Welcome to the guessing game!
Let's try to guess how many files are contained in the current folder.
Please insert a number:"
filesnumb=$(ls -A | wc -l) 
read number
formattest
while [[ $number -ne $filesnumb ]]
do
	magnitudetest
echo "Try again! You will be luckier!"
read number
formattest
done
echo "Congratulations! You have WON!!"
