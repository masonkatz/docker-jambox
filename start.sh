#!/bin/bash

cat << 'EOF'



   ___                ______           
  |_  |               | ___ \          
    | | __ _ _ __ ___ | |_/ / _____  __
    | |/ _` | '_ ` _ \| ___ \/ _ \ \/ /
/\__/ / (_| | | | | | | |_/ / (_) >  < 
\____/ \__,_|_| |_| |_\____/ \___/_/\_\



EOF


runuser -l jam -c "ssh-keygen -t rsa -f ~/.ssh/id_rsa -P ''"

ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
/usr/sbin/sshd -D
