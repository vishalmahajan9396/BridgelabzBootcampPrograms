#!/bin/bash -x
read -p "Enter a Single Digit Number:" number;
case $number in
	0)
	   echo "Sunday"
		;;
	1)
   	echo "Monday"
		;;
	2)
   	echo "Tuesday"
		;;
	3)
   	echo "Wensday"
		;;
	4)
   	echo "Thursday"
		;;
	5)
   	echo "Friday"
		;;
	6)
   	echo "Saturday"
		;;
	*)
		echo "Please Enter number between 0 to 6"
		;;
esac
