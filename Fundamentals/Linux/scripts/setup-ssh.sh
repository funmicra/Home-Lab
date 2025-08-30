#!/bin/bash
# Setup SSH keys for secure login

USERNAME="devopsuser"
SSH_DIR="/home/$USERNAME/.ssh"

sudo mkdir -p $SSH_DIR
sudo cp ~/.ssh/id_rsa.pub $SSH_DIR/authorized_keys
sudo chown -R $USERNAME:$USERNAME $SSH_DIR
sudo chmod 700 $SSH_DIR
sudo chmod 600 $SSH_DIR/authorized_keys

echo "SSH keys configured for $USERNAME"
