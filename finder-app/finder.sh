#!/bin/sh

filesdir=$1
searchstr=$2

if [ ! "$#" -eq 2 ]
then
	echo "Number of arguments should be 2."
	exit 1
fi

if [ ! -d "$filesdir" ]
then
	echo "$filesdir is not a directory."
	exit 1
fi

X=$(find $filesdir -type f | wc -l)
Y=$(grep -r $searchstr $filesdir | wc -l);
echo "The number of files are $X and the number of matching lines are $Y"


