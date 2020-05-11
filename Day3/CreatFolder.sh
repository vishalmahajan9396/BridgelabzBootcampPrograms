#!/bin/bash
read -p "Enter Your Folder Name:" name;
echo $name;
if [ -d $name ];
	then
		echo "Folder is already exist";
	else
		mkdir $name;
fi
