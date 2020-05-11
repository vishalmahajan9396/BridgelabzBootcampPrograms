#!/bin/bash -x
isHead=1;
count=0;
while [ $count -le 11 ]
do
	headTailCheck=$((RANDOM%2));
	if [ $isHead -eq $headTailCheck ]
	then
		echo "Heads";
	else
		echo "Tails";
	fi
	count=$(($count+1));
done
