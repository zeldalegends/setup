#!/bin/bash

uname -nrpv
cat /proc/cpuinfo|grep name
free -m
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo - e "Press \e[1;34mEnter\e[0m to continue..." 
read key
top -u ubuntu
