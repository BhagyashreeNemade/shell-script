#!/bin/bash -x
n=5
i=0

while [ $i -lt $n ]
do
	a[$i]=$((RANDOM%900+100))
	i=$(($i+1))
done
echo "Three digit 5 RANDOM values are:"
for i in "${a[@]}"
do 
	echo $i
done
max=0
min=1000
for i in "${a[@]}"
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
echo "Maximum no is:$max"
echo "Minimum no is:$min"
