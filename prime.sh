#!/bin/sh

echo "Enter the number"
read N
i=0
while [ i -le $N/2 ]
do
	if [ $N % $i == 0 ]
	then
		echo "$N is not a prime number"
		break
	fi
	i=`expr $i+1`
done
echo "$N is a prime number"
