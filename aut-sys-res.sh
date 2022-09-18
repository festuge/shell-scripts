#!/bin/bash
echo "script to check system resources"
sudo logname # to check who log into the server
sudo whoami  # to check who is currently using the shell
sudo df -h   # to check the disk free space of the entire server
sudo free -m # to check memory
sudo lscpu   # to check cpu informations
