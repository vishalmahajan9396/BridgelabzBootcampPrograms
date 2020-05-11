#!/bin/bash -x
read -p "Enter Number:" number;

for (( i=2;i*i<=$number;i++ ))
do
	if [ $(($number%$i)) -eq 0 ]
	then
		factor=$i
		count=0;
		for(( j=1;j<=$factor;j++ ))
		do
   		n=$(($factor%$j));
   		if [ $n -eq 0 ];
   		then
      		count=$(($count+1));
   		fi
		done
		if [ $count -eq 2 ];
		then
   		echo "Prime Factors are:" $factor;
		fi
	fi
done
