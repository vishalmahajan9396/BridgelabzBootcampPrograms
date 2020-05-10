#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program";

randomCheck=$(( RANDOM%2 ));
isPresent=1;
if [ $isPresent -eq $randomCheck ];
then
        echo "Employee is Present";
else
        echo "Employee is not Present";
fi
