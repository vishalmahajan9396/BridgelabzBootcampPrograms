#!/bin/bash -x

cat access.log | awk '$4~/Oct/{print $11}' | sort | uniq -c | sort -nr | head -4
