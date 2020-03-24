#!/usr/bin/env bash

echo "[Welcome to Guessing game v0.1]"

function ask {
	echo "Enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Higher"
	else
		echo "Lower"
	fi
	ask
done

echo: "Congratulations!"
echo "---" && ls -1
