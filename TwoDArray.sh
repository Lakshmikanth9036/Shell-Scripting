#!/bin/sh

function readAndDispArray(){
declare -A ar

echo "Enter the number of rows"
read num_row
echo "Enter the number of colums"
read num_col
for((i=0; i<num_row; i++)) do
	for((j=0; j<num_col; j++)) do
		read ar[$i,$j]
	done
	echo
done
for((j=0; j<num_row; j++)) do
	for((i=0; i<num_col; i++)) do
		echo -e $((ar[$j,$i])) '\c'
	done
	echo
done
}

readAndDispArray
