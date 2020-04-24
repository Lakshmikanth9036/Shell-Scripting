#!/bin/sh


function random(){
r=$(( RANDOM % 10 ))
echo $r
}


echo "Enter the vlaue of n"
read n
k=1
declare -a ar

ar[0]=$(random)
fun=0
while [ ${#ar[@]} -ne $n ]
do
	c=$(random)
	count=0

	for((i=0; i<${#ar[@]}; i++))
	do

		if [ ${ar[$i]} -eq $c ]
		then
			(( count++ ))
		fi
	done

	if [ $count -eq 0 ]
	then
		ar[$k]=$c
		(( k++ ))
	fi
	(( fun++ ))
done

for((i=0; i<${#ar[@]}; i++))
do
	echo -e ${ar[$i]} '\c'
done
echo
echo $fun " time random function is called"
