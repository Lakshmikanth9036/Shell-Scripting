#!/bin/sh


echo "Enter the vlaue of n"
read n
h=0
t=0
while [ $n -gt 0 ]
do
if (( $(awk -v r=0.$(( RANDOM )) -v d=0.5 'BEGIN {print (r>d)}') ))
then
	(( h++ ))
else
	(( t++ ))
fi
(( n-- ))
done
echo $h $t
headper=$(echo $h $t | awk '{ printf "%f", ($1*100)/($1+$2) }')
tailper=$(echo $t $h | awk '{ printf "%f", ($1*100)/($1+$2) }')
echo $headper $tailper


