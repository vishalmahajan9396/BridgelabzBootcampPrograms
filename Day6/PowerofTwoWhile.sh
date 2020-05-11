#!/bin/bash -x
read -p "Power of Number:" number;
power=0;
count=0;
while [ $power -le 256 ]
do
   power=$((2**$count));
	count=$(($count+1));
done
