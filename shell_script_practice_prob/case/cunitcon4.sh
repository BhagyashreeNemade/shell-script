#!/bin/bash -x
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read n
case "$n" in
	1)
		echo "Enter the value in Feet"
		read a
		inch=$(awk 'BEGIN {print '$a' * '12'}')
		echo "$a feet=$inch inch"
	;;
	2)
		echo "Enter the value in Feet"
		read a
		meter=$(awk 'BEGIN { print '$a' * '0.3048'}')
		echo "$a feet=$meter meter"
	;;
	3)
		echo "Enter the value in Inch"
                read a
                feet=$(awk 'BEGIN { print '$a' * '0.083333'}')
                echo "$a inch=$feet feet"
	;;
 	4)
		echo "Enter the value in Meter"
                read a
                feet=$(awk 'BEGIN { print '$a' * '3.28084'}')
                echo "$a meter=$feet feet"
	;;
	*)
		echo "Invalid case"
	;;
esac

