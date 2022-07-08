#!/bin/bash -x
echo "Enter a single digit number : "
read n
case "$n" in
1) echo "Sunday"
;;
2) echo "Monday"
;;
3) echo "Tuesday"
;;
4) echo "Thursday"
;;
5) echo "Friday"
;;
6) echo "saturday"
;;
7) echo "Sunday"
;;
*) echo "This is not a week day"
;;
esac




