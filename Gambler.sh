#!/bin/sh

function gambler(){
stake=$1
goal=$2
n=$3
win=0
lose=0
while [ $n -gt 0 -a $stake -ne $goal ]
do
	if(( $(awk -v r=0.$(( RANDOM )) -v d=0.5 'BEGIN {print (r<d)}') ))
	then
		stake=$(( stake+1 ))
		(( win++ ))
	else
		stake=$(( stake-1 ))
		(( lose++ ))
	fi
	(( n-- ))
done
winPer=$(echo $win $lose | awk '{print ($1*100)/($1+$2)}')
lossPer=$(echo $win $lose | awk '{print ($2*100)/($1+$2)}')
echo $win $winPer $lossPer $stake
}

echo "Enter the stake amount"
read s
echo "Enter the goal amount"
read g
echo "Enter how many times to play"
read n
gambler $s $g $n
