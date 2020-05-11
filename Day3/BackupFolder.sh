#!/bin/bash -x
for file in `find . -name "*.txt" -mtime -7`;
do
	if [ -d $file ] ;
	then
		mv $file "backup";
	fi
done
