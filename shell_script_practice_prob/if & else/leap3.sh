#!/bin/bash -x
echo "Enter the year"
read year
a=$(($year % 400))
b=$(($year % 4))
c=$(($year % 100))
if (($b==0))
then
	if(($a==0))
	then
		if(($c==0))
		then
			echo "$year is leap year"
		fi
	fi
else 
	echo "$year is not leap year"
fi
