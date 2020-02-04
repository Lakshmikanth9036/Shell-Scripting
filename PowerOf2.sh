#!/bin/sh

n=$1
k=1
while [ $n -gt 0 ]
do
	k=$((k*2))
	(( n-- ))
done
echo $k
