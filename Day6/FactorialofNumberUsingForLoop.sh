#!/bin/bash -x
read -p "Enter a number:" number;
factorial=1;
if [ $number -gt 0 ];
then
	for(( i=$number;i>=1;i-- ))
	do
		factorial=$(( $factorial*$i ));
	done
	echo "Factorial of number is" $factorial;
elif [ $number -eq 0 ];
then
	echo "Factorial of number is 1";
fi
