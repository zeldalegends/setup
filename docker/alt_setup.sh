#!/bin/bash

# Alternative Docker installation
mkdir alt_docker_setup
cd alt_docker
wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/containerd.io_1.6.9-1_amd64.deb                                                       2022-11-17 18:12:50 26.4 MiB
wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-ce-cli_20.10.21~3-0~ubuntu-jammy_amd64.deb                                     2022-11-17 18:05:55 39.6 MiB
# wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-ce-rootless-extras_20.10.21~3-0~ubuntu-jammy_amd64.deb                         2022-11-17 18:05:56 8.0 MiB
wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-ce_20.10.21~3-0~ubuntu-jammy_amd64.deb                                         2022-11-17 18:05:56 19.5 MiB
wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-compose-plugin_2.6.0~ubuntu-jammy_amd64.deb                                    2022-08-19 09:50:36 6.3 MiB
# wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-scan-plugin_0.21.0~ubuntu-jammy_amd64.deb 

sudo dpkg -i ./containerd.io_1.6.9-1_amd64.deb \
  ./docker-ce_20.10.21~3-0~ubuntu-jammy_amd64.deb \
  ./docker-ce-cli_20.10.21~3-0~ubuntu-jammy_amd64.deb \
  ./docker-compose-plugin_2.6.0~ubuntu-jammy_amd64.deb
