#!/bin/sh

declare -A ar
ar[0,0]=.
ar[0,1]=.
ar[0,2]=.
ar[1,0]=.
ar[1,1]=.
ar[1,2]=.
ar[2,0]=.
ar[2,1]=.
ar[2,2]=.

display(){
echo " ----------------------"
echo "    0      1      2    "
echo " ______________________"
echo " |      |      |      |"
echo "0|   ${ar[0,0]}  |   ${ar[0,1]}  |   ${ar[0,2]}  |"
echo " |      |      |      |"
echo " ----------------------"
echo " |      |      |      |"
echo "1|   ${ar[1,0]}  |   ${ar[1,1]}  |   ${ar[1,2]}  |"
echo " |      |      |      |"
echo " ----------------------"
echo " |      |      |      |"
echo "2|   ${ar[2,0]}  |   ${ar[2,1]}  |   ${ar[2,2]}  |"
echo " |      |      |      |"
echo " ----------------------"
}

check(){
if [ ${ar[$1,$2]} != "." ]
then
	echo "false"
else
	echo "true"
fi
}

win(){
if [ ${ar[0,0]} = ${ar[0,1]} ] && [ ${ar[0,0]} = ${ar[0,2]} ] && [ ${ar[0,0]} = $1 ]; then
	echo "true"
elif [ ${ar[1,0]} = ${ar[1,1]} ] && [ ${ar[1,0]} = ${ar[1,2]} ] && [ ${ar[1,0]} = $1 ]; then
	echo "true"
elif [ ${ar[2,0]} = ${ar[2,1]} ] && [ ${ar[2,0]} = ${ar[2,2]} ] && [ ${ar[2,0]} = $1 ]; then
        echo "true"
elif [ ${ar[0,0]} = ${ar[1,0]} ] && [ ${ar[0,0]} = ${ar[2,0]} ] && [ ${ar[0,0]} = $1 ]; then
        echo "true"
elif [ ${ar[0,1]} = ${ar[1,1]} ] && [ ${ar[0,1]} = ${ar[2,1]} ] && [ ${ar[0,1]} = $1 ]; then
        echo "true"
elif [ ${ar[0,2]} = ${ar[1,2]} ] && [ ${ar[0,2]} = ${ar[2,2]} ] && [ ${ar[0,2]} = $1 ]; then
        echo "true"
elif [ ${ar[0,0]} = ${ar[1,1]} ] && [ ${ar[0,0]} = ${ar[2,2]} ] && [ ${ar[0,0]} = $1 ]; then
        echo "true"
elif [ ${ar[0,2]} = ${ar[1,1]} ] && [ ${ar[0,2]} = ${ar[2,0]} ] && [ ${ar[0,2]} = $1 ]; then
        echo "true"
else
	echo "flase"
fi
}


count=9
while [ 1 ]
do
	s1=false
	display

	if [ $count -eq 0 ]
        then
                echo "Board is full"
                break
        fi

	while [ $s1 = "false" ]
	do
		echo "Enter the row"
		read row1
		echo "Enter the column"
		read col1
		s1=$( check $row1 $col1 )
		echo $s1
		if [ $s1 = "false" ]
		then
			echo "Plz pick other position"
		fi
	done

	ar[$row1,$col1]="x"
	(( count-- ))
	display
	w1=$( win "x" )
	if [ $w1 = "true" ]
	then
		echo "User won"
		break
	fi


	s2=false
        display

	if [ $count -eq 0 ]
	then
		echo "Board is full"
		break
	fi

        while [ $s2 = "false" ]
        do
        	row2=$(( RANDOM % 3 ))
		col2=$(( RANDOM % 3 ))
        	s2=$( check $row2 $col2 )
        	echo $s2
        	if [ $s2 = "false" ]
        	then
                	echo "Plz pick other position"
        	fi
        	done
        ar[$row2,$col2]="o"
	(( count-- ))
        display
        w2=$( win "o" )
        if [ $w2 = "true" ]
        then
                echo "Computer won"
                break
        fi
done
