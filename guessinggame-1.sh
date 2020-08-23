# This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number.
# The user will be informed if their guess is too high or too low. 
# Once the user guesses the correct number, they should be congratulated.

num_files=$(ls -1 . | wc -l)

echo "Guess how many files are here in this directory? Type in a number:"

while true
do
	read response

	if [[ $response =~ [^0-9] ]]
	then
		echo "Sorry it's not a number. Try again:"
	elif [[ $response -gt $num_files ]]
	then
		echo "You entered: $response, it's too high. Try again:"
	elif [[ $response -lt $num_files ]]
	then
		echo "You entered: $response, it's too low. Try again:"
	elif [[ $response -eq $num_files ]]
	then
		break
	else
		echo "Sorry it's not a number. Try again:"
	fi
done

echo "Congratulations! You've got the correct number!"
