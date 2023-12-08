#!/bin/bash

writefile=$1
writestr=$2

if [ ! "$#" -eq 2 ]
then 
	echo "Number of arguments should be 2."
	exit 1
fi

if [ ! -f "$writefile" ]
then
	directory=$(dirname "$writefile")

	if [ ! -d "$directory" ]
	then
		mkdir -p $directory
	fi

fi

echo "$writestr" > "$writefile"

if [ ! $? -eq 0 ]
then
	echo "File could not be created"
	exit 1
fi

exit 0
