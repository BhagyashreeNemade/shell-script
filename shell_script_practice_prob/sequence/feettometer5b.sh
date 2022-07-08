#!/bin/bash -x
read -p "Enter Length in feet:" l
read -p "Enter Width in feet:" w
a=$(($l*$w))
echo "Area of plot in feet $a"
m=0.3048
meter=$(awk 'BEGIN {print '$a' * '$m'}')
echo "Area of plot in Meter: $meter"

