#!/bin/bash -x
read -p "enter command:" command;
$command;
execute=`echo $?`;
if [ $execute -eq "0" ];
	then
		echo "Command Successfully Executed";
	else
		echo "Command Not Executed"
fi
