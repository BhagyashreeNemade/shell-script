#!/bin/bash -x
n=10
i=0
while [ $i -lt $n ]
do
	a[$i]=$((RANDOM%900+100))
	i=$(($i+1))
done
echo "${a[@]}"
s1=999
s2=999
for x in ${a[@]}
do
	if [ $s1 -gt $x ]
	then
		s2=$s1
		s1=$x
	elif [[ $s2 -gt $x && $s1 -ne $x ]]
	then
		s2=$x
	fi
done
echo "Second smallest $s2"
m1=0
m2=0
for x in ${a[@]}
do
        if [ $m1 -lt $x ]
        then
                m2=$m1
                m1=$x
        elif [[ $m2 -lt $x && $m1 -ne $x ]]
        then
                m2=$x
        fi
done
echo "Second largest $m2"
