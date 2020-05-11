#!/bin/bash -x
read -p "Enter a number:" number;
harmonic=0;
for(( i=1;i<=$number;i++ ))
do
	harm=`echo $i | awk '{div = 1/$i; printf "%f", div}'`;
	harmonic=`echo $harmonic $harm | awk '{add=$1+$2; printf "%f", add}'`;
done
echo $harmonic;

