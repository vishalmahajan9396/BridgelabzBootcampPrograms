#!/bin/bash -x
read -p "Enter a Single Digit Number between 0 to 6:" number;
if [ $number -eq 0 ];
then
	echo "Sunday";
elif [ $number -eq 1 ];
then
	echo "Monday";
elif [ $number -eq 2 ];
then
	echo "Tuesday";
elif [ $number -eq 3 ];
then
	echo "Wensday";
elif [ $number -eq 4 ];
then
	echo "Thursday";
elif [ $number -eq 5 ];
then
	echo "Friday";
elif [ $number -eq 6 ];
then
	echo "Saturday";
fi
