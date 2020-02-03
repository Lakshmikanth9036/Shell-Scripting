
#!/bin/sh

a=0
CONSTANT=10
while [ $a -lt $CONSTANT ]
do
	echo $a
	a=`expr $a + 1`
done
