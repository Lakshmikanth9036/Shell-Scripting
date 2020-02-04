#!/bin/sh

echo "Enter the value of n"
read n
k=1
i=2
while [ $i -le $n ]
do
	k=$(echo $k $i | awk '{printf "%f", ($1)+(1/$2)}')
	echo $k
	(( i++ ))
done
