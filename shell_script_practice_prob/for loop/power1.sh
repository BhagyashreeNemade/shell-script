#!/bin/bash
echo "Enter the no to be done"
n=2
read m
for((i=1;i<=m;i++))
do
	p=$(($n**$i))
	echo "table of power of 2 2^$i" $p
done
