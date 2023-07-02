#!/bin/bash

servers="server1 server2 server3"

for i in $servers
do
	ps -ef | grep "$i"
#	ping 15.207.84.75
       if [ $? -ne 0 ];then
	       echo "Server not working" | mail -s $i "Process stopped" deekshithc@gmail.com
       else
	        echo "Servers are working" | mail -s $i "Process running" deekshithc@gmail.com
       fi

done

