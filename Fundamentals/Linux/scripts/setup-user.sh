#!/bin/bash
# Create new user with sudo rights

USERNAME="devopsuser"

sudo adduser $USERNAME
sudo usermod -aG sudo $USERNAME

echo "User $USERNAME created and added to sudo group."
