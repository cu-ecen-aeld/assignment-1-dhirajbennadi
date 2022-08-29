#!/bin/sh
# Shell script for Assignment 1
# Author: Dhiraj Bennadi


# $0 represents the first argument to the script, and subsequent numbers represent the next arguments
echo "Executing Shell script: $0"

if [ $# -lt 2 ]
then
    echo "Less number of arguments passed"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ];
then
    echo "Directory $filesdir doesnt exist"
    exit 1
fi

#echo "${filesdir}"

cd ${filesdir}

#ls *txt

echo "\n"

# Variables to store the file count and search count
count=0
stringcount=0
filecount=0

for file in *.txt
do
    filecount=$(($filecount + 1))
    #echo "$file"
    count=$(grep -r "$searchstr" $file | wc -l)

    stringcount=$(($stringcount + $count))
done

#echo "Total Count = $var"

echo "File Count = $filecount"
echo "Line Count = $stringcount"

echo "The number of files are $filecount and the number of matching lines are $stringcount"


