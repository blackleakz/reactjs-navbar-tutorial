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
echo "Skipping system-check, auto-install will try all pkg-managers! "
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

echo -n "Console > Updating npm...."
npm install -g npm;

setup_env;
}

manual() {
echo -n "Console > Manual-installation mode is choosed!:: Enter these commands to install all deps:
"

echo "1: cd into ReactJS Project dir!"
echo "2: Install all npm-requiremnts::!"
echo " Enter:"
echo "npm install bootstrap"
echo "npm install react-router-dom"
echo "npm install react-bootstrap"
read -p "Enter Prject-Path >  " path 
echo -n "Console > CD INTO : $path "
cd $path

read -p "Console-Enter npm Command > " cmd 
$cmd
read -p "Console-Enter npm Command > " cmd 
$cmd
read -p "Console-Enter npm Command > " cmd 
$cmd

echo -n "Console > All node-deps are now installed! You can now start adding the NavBar-files and edit them!"


}


setup_env() {
echo -n "Console > Seting up env-vars::!"
read -p "Console > Enter path of reactjs-app::> " path

cd $path
ls -l package*

echo -n "Console > Are you already in your reactjs-app-folder and you can see the package.json file right now?(Yy/Nn)"
read -p "Enter Yy/Nn:>> " yn
case $yn in 
    y|Y) echo -n "Console > Continue..."; continue;;
    n|N) echo -n "Console > You arent in your ReactJS-App folder, plz enter folder-path now!" && read -p "folder-path: " path && cd $path; continue;;
    *) echo -n "Invalid input"; menu;;
esac


echo -n "Console > Installing now npm-packages!"
npm install react-router-dom;
npm install react-bootstrap;
npm install bootstrap;

}