#!/bin/bash
cat /etc/*release|grep DESCRIPTION
cat /proc/cpuinfo|grep name
free -m
