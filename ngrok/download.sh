#!/bin/bash

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz 
### https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz ### for ARM

tar xvzf ngrok-v3-stable-linux-amd64.tgz # tar xvzf ngrok-v3-stable-linux-arm64.tgz

echo Connect https://dashboard.ngrok.com/signup to and register the authtoken
echo ./ngrok config add-authtoken <authtoken>
