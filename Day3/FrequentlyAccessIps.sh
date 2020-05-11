#!/bin/bash -x

cat access.log | awk '{print $17}' | sort | uniq -c | sort -nr | head -4
