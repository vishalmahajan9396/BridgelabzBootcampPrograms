#!/bin/bash -x
sum=0;
for((i=0;i<5;i++));
do
	random=$((RANDOM%90+10));
   sum=$(( $sum+$random ));
done
echo $sum;
avrg=$(( $sum/5 ));
echo $avrg;
