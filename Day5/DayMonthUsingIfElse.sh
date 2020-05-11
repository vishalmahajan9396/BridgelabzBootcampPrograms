#!/bin/bash -x
read -p "Enter a Day:" day;
read -p "Enter a Month:" month;

if [[ 20 -le $day && $day -le 31 &&  3 -eq $month ]]
then
	echo "True";
elif [[ $day -le 31 && 4 -le $month && $month -le 5 ]]
then
	echo "True";
elif [[ $day -le 20 && $month -eq 6 ]];
then
	echo "True";
else
	echo "False";
fi
