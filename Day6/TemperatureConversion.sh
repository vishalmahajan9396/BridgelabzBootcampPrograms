#!/bin/bash -x

function degF() {
	read -p "Enter Temperature in Celsius:" degC;
	degF=$(((( $degC * 9/5 )) +32 ));
	echo $degF;
}
function degC() {
	read -p "Enter Temperature in Fahrenheit:" degF;
	degC=$(((($degF - 32)) * 5/9 ));
	echo $degC;
}

echo "Temperature Conversion";
echo "1) degC to degF";
echo "2) degF to degC";
read -p "Enter Your Choice:" choice;
case $choice in
	1)
		degF
		;;
	2)
		degC
		;;
	*)
		echo "Invalid Inpute"
		;;
esac
