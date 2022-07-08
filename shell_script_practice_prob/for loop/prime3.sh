#!/bin/bash -x
echo "Enter the no"
read n
for((i=2;i<=$n/2;i++))
do
	ans=$(($n%$i))
	if [ $ans -eq 0 ]
	then
		echo "$n is not a prime no"
		exit 0
	fi
done
echo "$n is a prime no"
