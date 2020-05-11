#!/bin/bash -x

ps -elf | awk '{ print $2 "   " $3 "   " $6 }';
