#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program";

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	empCheck=$((RANDOM%3));
		case $empCheck in
			$IS_FULL_TIME)
				empHrs=12
				;;
			$IS_PART_TIME)
				empHrs=8
				;;
			*)
				empHrs=0
				;;
		esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs));
done

totalSalary=$(( $totalEmpHrs * $EMP_RATE_PER_HR ));
echo "Total Employee Hours: "$totalEmpHrs;
echo "Total Employee Salary: "$totalSalary;
