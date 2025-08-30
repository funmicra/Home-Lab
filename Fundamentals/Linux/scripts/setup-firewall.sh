#!/bin/bash
# Basic firewall setup with UFW

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable

echo "Firewall enabled with SSH, HTTP, and HTTPS allowed."
