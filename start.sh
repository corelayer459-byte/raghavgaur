#!/bin/bash

# Set root password
echo "root:mypassword123" | chpasswd

# Start SSH server
service ssh start

# Keep alive 24/7
while true; do
  echo "VPS alive... $(date)"
  sleep 60
done
