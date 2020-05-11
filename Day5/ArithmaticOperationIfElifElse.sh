#!/bin/bash -x

echo "Enter Three Number"
read firstNumber;
read secondNumber;
read thirdNumber;

operationFirst=$(($firstNumber+$secondNumber*$thirdNumber));
operationSecond=$(($firstNumber%$secondNumber+$thirdNumber));
operationThird=$(($thirdNumber+$firstNumber/$secondNumber));
operationFourth=$(($firstNumber*$secondNumber+$thirdNumber));

result[0]="$operationFirst"
result[1]="$operationSecond"
result[2]="$operationThird"
result[3]="$operationFourth"

echo ${result[@]}
arrayLength=${#result[@]}
for (( i=0;i<$arrayLength;i++ ))
do
   for (( j=i+1;j<$arrayLength;j++ ))
   do
      if [ ${result[i]} -gt ${result[j]} ];
      then
         temp=${result[i]};
         result[$i]=${result[j]};
         result[$j]=$temp;
      fi
   done
done
echo "Minimum Number" ${result[0]};
echo "Maximum Number" ${result[$(($arrayLength-1))]};
