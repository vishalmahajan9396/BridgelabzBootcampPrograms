#!/bin/bash -x
for file in `ls *.log`;
do
	occurrence=`grep -c "systemd" $file`;
	echo $occurrence;
done
