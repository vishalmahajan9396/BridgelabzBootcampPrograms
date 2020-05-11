#!/bin/bash -x
echo "1) Feet to Inch";
echo "2) Feet to Meter";
echo "3) Inch to Feet";
echo "4) Meter to Feet";
read -p "Enter a Choice:" choice;
case $choice in
	1)
		read -p "Enter Feet:" feet
		inch=`echo $feet | awk '{div = $feet*12; printf "%f", div}'`
		echo "Inches "$inch
		;;
	2)
		read -p "Enter Feet:" feet
		meter=`echo $feet | awk '{div = $feet/3.28; printf "%f", div}'`
		echo "Feets "$meter
		;;
	3)
		read -p "Enter Inch:" inch
		feet=`echo $inch | awk '{div = $inch/12; printf "%f", div}'`
		echo "Feets "$feet
		;;
	4)
		read -p "Enter Meter:" meter
		feet=`echo $meter | awk '{div = $meter*3.28; printf "%f", div}'`
		echo "Feets "$feet
		;;
	*)
		echo "Invald Input"
		;;
esac
