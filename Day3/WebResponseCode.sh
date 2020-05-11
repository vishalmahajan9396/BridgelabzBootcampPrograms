#!/bin/bash -x

cat access.log | awk '{print $10}' | sort | uniq -c | sort -nr | head -4
