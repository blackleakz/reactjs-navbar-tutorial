#!/bin/bash
# linux-setup.sh

echo -n "Console > Make sure to run script as root!"

menu() {
echo -n "Console > Setting up full-enviroment with its dependencies!"

while true;
do
echo "=================================="
echo "== linux-setup | (c) BlackLeakz =="
echo "=================================="
echo "== 1: install all | 2: manual   =="
echo "=================================="

read -p "Console > " x
case $x in 
    1) auto; continue;;
    2) manual; continue;;
    *) echo -n "Invalid input"; continue;;
esac
done
}

auto() {
echo -n "Console > Auto-installing now..."
apt-get update;
apt-get install -y npm;
apt-get install -y node;
apt-get install -y node.js;
apt-get install -y nodejs;
pacman -Syyu;
pacman -Sy npm;
pacman -Sy node;
pacman -Sy node.js;
pacman -Sy nodejs;