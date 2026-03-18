#!/bin/bash

# Enable password authentication
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Set root password
echo "root:mypassword123" | chpasswd

# Generate SSH keys
ssh-keygen -A

# Start SSH
service ssh start

# Keep alive 24/7
while true; do
  echo "VPS alive... $(date)"
  sleep 60
done
