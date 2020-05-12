#!/bin/bash -x

echo "Welcome to User Registration";
read -p "Enter First Name:" firstName;
firstNamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
if [[ $firstName =~ $firstNamePattern ]];
then
	echo "First name is:" $firstName;
else
	echo "Enter Valid name";
fi
