#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program";

isPartTime=1;
isFullTime=2;
wagePerHour=20;
randomCheck=$(( RANDOM%3 ));

if [ $isPartTime -eq $randomCheck ];
then
	fullDayHour=8;
elif [ $isFullTime -eq $randomCheck ];
then
	fullDayHour=12;
else
	salary=0;
fi

salary=$(( $wagePerHour * $fullDayHour ));
echo "Salary: "$salary;
