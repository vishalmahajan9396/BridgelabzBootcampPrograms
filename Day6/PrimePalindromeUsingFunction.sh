#!/bin/bash -x
read -p "Enter number:" number;

function isprime() {
	local count=0;
	for(( i=1; i<=$number; i++ ))
	do
		n=$(($number%$i));
		if [ $n -eq 0 ];
		then
			count=$(($count+1));
		fi
	done
	if [ $count -eq 2 ];
	then
		echo $number " is Prime Number";
	else
		echo $number " is not Prime Number";
	fi
}
function ispalindrome() {
	local rev=0;
	while [ $number -eq 0 ];
	do
		rev=$(( $rev*10+$number%10 ));
		number=$(($number/10));
		if [ $rev -eq $number ];
		then
			echo $number " is palindrome number";
			isprime $number;
		else
			echo $number " is not palindrome number";
		fi
	done
}
isprime $number;
ispalindrome $number;
