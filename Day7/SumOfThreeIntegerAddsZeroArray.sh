#!/bin/bash -x

function findSumZero() {
for (( i=0;i<$(($arrayLength-2));i++ ))
do
	for (( j=$(($i+1));j<$(($arrayLength-1));j++ ))
	do
		for (( k=$(($j+1));k<$arrayLength;k++ ))
		do
			if [ $(( ${array[$i]} + ${array[$j]} + ${array[$k]} )) -eq 0 ]
			then
				echo ${array[$i]} ${array[$j]} ${array[$k]}
			fi
		done
	done
done
}

array[0]="0";
array[1]="-1";
array[2]="-3";
array[3]="2";
array[4]="1";

echo ${array[@]};
arrayLength=${#array[@]};
findSumZero ${array[@]} $arrayLength;
