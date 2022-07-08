#!/bin/bash -x
num1=$((RANDOM%99+11))
num2=$((RANDOM%99+11))
num3=$((RANDOM%99+11))
num4=$((RANDOM%99+11))
num5=$((RANDOM%99+11))
sum=$(( $num1 + $num2 + $num3 + $num4 + $num5 ))
echo "Sum is $sum"
avg=$(( $sum / 5 ))
echo "Average is $avg"


