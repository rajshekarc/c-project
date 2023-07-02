#!/bin/bash

size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed '$s/%//'`

if [ size -gt 90 ];then
echo "Your storage is above 90%" | mail -s "memory 90%" -c xyz@gmail.com abc@gmail.com
fi
