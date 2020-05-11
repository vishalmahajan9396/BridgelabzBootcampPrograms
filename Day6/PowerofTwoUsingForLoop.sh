#!/bin/bash -x
read -p "Power Number:" n;
for (( i=1;i<=$n;i++ ))
do
	power=$((2**$i));
done
