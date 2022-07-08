#!/bin/bash -x
echo "Enter the starting no"
read s
echo "Enter the ending no"
read e
for((i=$s;i<=$e;i++))
do
	flag=0;
	for((j=2;j<=$i/2;j++))
	do
		ans=$(($i%$j))
		if [ $ans -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$i"
	fi
done
