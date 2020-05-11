#!/bin/bash -x
empDetail=`cat data.csv | awk '{ $4>10000 }END{ print $2 " " $7 }'`;
echo $empDetail;
totlePay=`cat data.csv | grep -i captain | awk '{ sum+=$7 }END{ print sum }'`;
echo $totlePay;
jobTitle=`cat data.csv | awk '{$6>7000&&$6<10000}END{print $3}'`;
echo $jobTitle;
avgBase=`cat data.csv | awk '{ sum+=$4 }END{ print sum/NR }'`;
echo $avgBase;
