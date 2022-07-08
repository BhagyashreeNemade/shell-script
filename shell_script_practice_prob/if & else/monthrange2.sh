#!/bin/bash -x
start="1903"
end="2106"
echo "Enter the date in ddmm format"
read x
if [[ $x -gt $start && $x -lt $end ]]
then
	echo "True"
else
	echo "False"
fi
