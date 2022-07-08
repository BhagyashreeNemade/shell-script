#!/bin/bash -x
read -p "Enter Length in feet:" l
read -p "Enter Width in feet:" w
a=$(($l*$w))
echo "Area of plot in feet $a"
m=0.3048
meter=$(awk 'BEGIN {print '$a' * '$m' * '25'}')
echo "Area of 25 plot in Meter: $meter"
ac=0.000247
acre=$(awk 'BEGIN {print '$meter' * '$ac'}')
echo "In acres $acre"
