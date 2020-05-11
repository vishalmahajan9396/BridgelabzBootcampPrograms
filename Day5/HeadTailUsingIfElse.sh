#!/bin/bash -x
isHead=1;
headTailCheck=$((RANDOM%2));
if [ $isHead -eq $headTailCheck ]
then
		echo "Heads"
else
		echo "Tails"
fi
