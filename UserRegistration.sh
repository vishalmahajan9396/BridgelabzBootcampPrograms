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

read -p "Enter Last Name:" lastName;
lastNamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
if [[ $lastName =~ $lastNamePattern ]];
then
   echo "Last name is:" $lastName;
else
   echo "Enter Valid name";
fi
