#!/bin/bash

# Create and add docker group
# sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
# sudo chmod g+rwx "$HOME/.docker" -R
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Verify Docker installation
docker run hello-world
