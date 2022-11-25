#!/bin/bash

# Source: https://docs.docker.com/engine/install/ubuntu/#installation-methods

# Setup Docker repository
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Add Docker group
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker # sudo service docker start

# Install Node.js and Node-RED
sudo apt install build-essential git # curl
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
echo
echo ---------------------------
echo Node-RED available commands
echo ---------------------------
echo node-red-start
echo node-red-stop
echo node-red-restart
echo node-red-log
echo ---------------------------
echo

# Start on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl enable nodered.service

# Disable start on boot
# sudo systemctl disable docker.service
# sudo systemctl disable containerd.service
# sudo systemctl disable nodered.service

# Verify installations
docker -version
node -version
