#!/bin/bash -x
for (( count=0;count<5;count++))
do
   random=$((RANDOM%900 + 100));
   array[$count]="$random";
done
echo ${array[@]}
arrayLength=${#array[@]}
for (( i=0;i<$arrayLength;i++ ))
do
   for (( j=i+1;j<$arrayLength;j++ ))
   do
      if [ ${array[i]} -gt ${array[j]} ];
      then
         temp=${array[i]};
         array[$i]=${array[j]};
         array[$j]=$temp;
      fi
   done
done
echo "Minimum Number" ${array[0]};
echo "Maximum Number" ${array[$(($arrayLength-1))]};
