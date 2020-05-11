#!/bin/bash -x
for file in `ls *.log.1`;
do
	file1=`echo $file | awk -F. '{ print $1 }'`;
	date=`date +"%d%m%Y"`;
	cp $file $file1"-"$date".log";
done
