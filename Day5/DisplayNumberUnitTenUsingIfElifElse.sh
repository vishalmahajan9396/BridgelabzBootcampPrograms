#!/bin/bash -x
read -p "Enter Number 1 and multiple of 10:" number;
if [ $number -eq 1 ];
then
	echo "One";
elif [ $number -eq 10 ];
then
	echo "Ten";
elif [ $number -eq 100 ];
then
	echo "Hundred";
elif [ $number -eq 1000 ];
then
	echo "Thousand";
elif [ $number -gt 1000 ];
then
	echo "Invalid number";
fi
