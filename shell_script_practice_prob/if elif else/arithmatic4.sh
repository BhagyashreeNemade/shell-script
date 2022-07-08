#!/bin/bash -x
echo "Enter the numbers"
read a
read b
read c
arr[0]=$(awk 'BEGIN {print '$a' + '$b' * '$c'}')
arr[1]=$(awk 'BEGIN {print '$a' % '$b' + '$c'}')
arr[2]=$(awk 'BEGIN {print '$c' + '$a' / '$b'}')
arr[3]=$(awk 'BEGIN {print '$a' * '$b' + '$c'}')

echo "1. a+b*c=${arr[0]}"
echo "2. a%b+c=${arr[1]}"
echo "3. c+a/b=${arr[2]}"
echo "4. a*b+c=${arr[3]}"
max=0
min=1000
for i in "${arr[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done
echo "Maximum value is : $max"
echo "Minimum value is : $min"
