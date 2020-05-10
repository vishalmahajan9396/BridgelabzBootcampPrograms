#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program";

isPartTime=1;
isFullTime=2;
wagePerHour=20;
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
echo "Salary: "$salary;
