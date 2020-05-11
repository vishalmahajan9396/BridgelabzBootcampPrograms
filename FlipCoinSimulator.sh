#!/bin/bash -x

echo "Welcome to Flip Coin Simulation";

randomCheck=$((RANDOM%2));
isHead=1;

if [ $randomCheck -eq $isHead ]
then
	echo "Winner";
else
	echo "Looser";
fi
