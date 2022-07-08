#!/bin/bash -x
echo "Enter the no"
read n
fibo=1
for((i=1;i<=n;i++))
do
	fibo=$(($fibo*$i))
done
echo "$n Factoria = $n! = $fibo"
