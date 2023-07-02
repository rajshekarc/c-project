#!/bin/bash

if [ $# -ne 2 ]
then
echo "pls input 2 numbers"
exit 1
fi

if [ $1 -gt $2 ]
then
echo "$1 is big"
elif [ $1 -eq $2 ];then
echo "Both are Equal"
else
echo "$2 is big"
fi
