#!/bin/bash -x
echo "Enter the number that you want to convert inch to feet"
read number
feet=$(($number/12))
inch=$(($number%12))
echo "$number in convert to feet= $feet ft $inch in"
