#!/bin/bash -x
read -p "Enter Year:" year;
if [ $(($year%4)) -eq 0 ];
then
	if [ $(($year%100)) -eq 0 ];
	then
		if [ $(($year%400)) -eq 0 ];
		then
			echo "leap year";
		else
			echo "Not leap year";
		fi
	else
		echo "leap year";
	fi
else
	echo "Not leap year"
fi
