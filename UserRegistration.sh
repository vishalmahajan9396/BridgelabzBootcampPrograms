#!/bin/bash -x

echo "Welcome to User Registration";

read -p "Enter First Name:" firstName;
firstNamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
if [[ $firstName =~ $firstNamePattern ]];
then
	echo "First name is:" $firstName;
else
	echo "Please Enter Valid name";
fi

read -p "Enter Last Name:" lastName;
lastNamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
if [[ $lastName =~ $lastNamePattern ]];
then
   echo "Last name is:" $lastName;
else
   echo "Please Enter Valid name";
fi

read -p "Enter Email ID:" emailID;
emailPattern="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,10})$"
if [[ $emailID =~ $emailPattern ]]
then
   echo "Email ID:" $emailID;
else
   echo "Please Enter valid Email ID";
fi

read -p "Enter Mobile Number:" mobileNumber
mobilePattern="^((\+){1}91){1}[789]{1}[0-9]{9}$";
if [[ $mobileNumber =~ $mobilePattern ]]
then
   echo "Mobile number:" $mobileNumber;
else
   echo "Please Enter Valid Mobile number";
fi

read -p "Enter Password:" password;
passwordPattern="^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,})$"
if [[ $password =~ $passwordPattern ]]
then
	echo "Password:" $password;
else
	echo "Please Enter valid Password";
fi
