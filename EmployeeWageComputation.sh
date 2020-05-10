#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program";

randomCheck=$(( RANDOM%2 ));
isPresent=1;
if [ $isPresent -eq $randomCheck ];
then
	wagePerHour=20;
	fullDayHour=8;
	salary=$(($wagePerHour * $fullDayHour));
else
	salary=0;
fi
echo "Salary: "$salary;
