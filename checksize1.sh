#!/bin/bash

size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/\%//'`

if [ $size -gt 20 ];then
echo "Hi/n memory reached 90%" | mail -s "memory reached 90%"  -c xyz@gmail.com abc@gmail.com
fi

