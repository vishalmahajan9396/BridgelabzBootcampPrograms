#!/bin/bash -x

echo "Welcome to Arithmatic Computation and Sorting"

echo "Enter Three Number"
read firstNumber;
read secondNumber;
read thirdNumber;

operationFirst=$(($firstNumber+$secondNumber*$thirdNumber));
operationSecond=$(($firstNumber*$secondNumber+$thirdNumber));
operationThird=$(($thirdNumber+$firstNumber/$secondNumber));
operationFourth=$(($firstNumber%$secondNumber+$thirdNumber));

declare -A result
result[0]="$operationFirst";
result[1]="$operationSecond";
result[2]="$operationThird";
result[3]="$operationFourth";

echo ${result[@]};
