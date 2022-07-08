#!/bin/bash -x
a=$((RANDOM%10))
echo $a
C=$(($a%2))
if [ $C -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi
