#!/bin/bash

while true
do
 sudo service smbd stop
 echo "I'm Batman" > '/etc/samba/smb.conf'
 sleep 420
done
