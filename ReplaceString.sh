#!/bin/sh

if [ ${#1} -lt 3 ]
then
	echo "Enter the string whose size is greater than 3"
else
	echo "Hello $1, How are you?"
fi
