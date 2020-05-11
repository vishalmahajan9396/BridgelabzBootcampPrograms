#!/bin/bash -x

cat access.log | awk '{print $11}' | sort | uniq -c | sort -nr | head -4
