#!/bin/bash -x
n=10
i=0
while [ $i -lt $n ]
do
        a[$i]=$((RANDOM%900+100))
        i=$(($i+1))
done
echo "${a[@]}"
flag=1
for((m=0;m<$n;m++))
do
	for((p=0;p<$n-$m-1;p++))
	do
		if [[ ${a[$p]} -gt ${a[$(($p+1))]} ]]
		then
			temp=${a[$p]}
			a[$p]=${a[$(($p+1))]}
			a[$(($p+1))]=$temp
		fi
	done
done
echo "Array is sorted order"
echo ${a[@]}
echo "Second smallest no" ${a[1]}
echo "Second largest no" ${a[$m-2]}
