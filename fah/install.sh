#!/bin/bash

wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.6/fahclient_7.6.21_amd64.deb
# wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-arm64/v7.6/fahclient_7.6.21_arm64.deb # for ARM 
wget https://download.foldingathome.org/releases/public/release/fahcontrol/debian-stable-64bit/v7.6/fahcontrol_7.6.21-1_all.deb

sudo dpkg -i --force-depends fahclient_7.6.21_arm64.deb
