#!/bin/bash

#This program is made for demontrational purpose, and to test my ability in scripting.
#If you need to install and run OpenSSH, I recommend using the vetted repository in your distribution.
#The program uses DNF packet manager. Make sure it is installed before using the program.

user=$(whoami)

echo "This program will install the latest version of OpenSSH and if fully completed, make you able to SSH into the desired endpoint."
sleep 1
sudo dnf install openssh
sudo dnf install openssh-server
sudo systemctl start sshd
sudo systemctl status sshd

break
sleep 1

echo "Your IP address is. Do not use the loopback address"
ip address | grep "inet "

echo "Which IP address do you want to connect with?"
echo $ipaddress
read ipaddress
