#!/bin/bash -x
read -p "Enter Number:" number;
count=0;
for(( i=1; i<=$number; i++ ))
do
	n=$(($number%$i));
	if [ $n -eq 0 ];
	then
		count=$(($count+1));
	fi
done
if [ $count -eq 2 ];
then
	echo $number " is Prime Number";
else
	echo $number " is not Prime Number";
fi
