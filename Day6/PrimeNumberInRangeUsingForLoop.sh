#!/bin/bash -x
read -p "Enter First number:" firstNumber;
read -p "Enter Second number:" secondNumber;
for(( i=$firstNumber;i<=$secondNumber;i++))
do
	count=0;
	for((j=1;j<=$i;j++))
	do
		n=$(($i%$j));
		if [ $n -eq 0 ];
		then
			count=$(($count+1));
		fi
	done
	if [ $count -eq 2 ];
	then
		echo $i " is Prime Number";
	else
		echo $i " is not Prime Number";
	fi
done
