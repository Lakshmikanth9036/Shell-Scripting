#!/bin/sh

function triplet(){
echo "Enter the array elements"
read -a val
n=${#val[@]}
c=0
for((i=0;i<(n-2);i++)) do
tri=$(( ${val[$i]}+${val[$i+1]}+${val[$i+2]} ))
if [ $tri -eq 0 ]
then
	echo ${val[$i]} ${val[$i+1]} ${val[$i+2]}
	(( c++ ))
fi
done
echo $c
}
triplet
