#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program";

isPartTime=1;
isFullTime=2;
wagePerHour=20;
workingDayPerMonth=20;
totalSalary=0;

for (( day=1; day<=$workingDayPerMonth; day++ ))
do
	randomCheck=$(( RANDOM%3 ));
	case $randomCheck in
		$isFullTime)
			fullDayHour=12;
			;;
		$isPartTime)
			fullDayHour=8;
			;;
		*)
			fullDayHour=0;
			;;
	esac

	salary=$(( $wagePerHour * $fullDayHour ));
	totalSalary=$(( $totalSalary + $salary ));
done
echo "Total Salary: "$totalSalary;
