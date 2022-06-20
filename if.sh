#!/bin/bash
echo "shell file name is $0 "
a=$1
b=$2
c=$3
echo "Entered numbers are $@"
cli_arg=$#
if [ $cli_arg -eq 3 ]
then 
	if [[ $a -gt $b && $a -gt $c ]]
	then
		echo "$a is greater"
	elif [[ $b -gt $c && $b -gt $a ]]
	then 
		echo "$b is greater"
	elif [[ $c -gt $a && $c -gt $b ]]
	then
		echo "$c is greater"
	fi
else
	echo "Enter 3 numbers"
fi
