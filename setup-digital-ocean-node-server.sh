#!/bin/sh

# A shell script to install softwares automatically
# Run the script as root by typing: sudo sh setup.sh

# First go to home
cd ~

# First update and upgrade
apt update -y
apt upgrade -y

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_7.x | -E bash -
apt update -y
apt install -y nodejs

# Fix npm permission
mkdir ~/.npm-global
npm config set prefix ~/.npm-global

# Install some essential node packages
npm install npm@latest -g
npm install -g nodemon

# Install npm
apt install npm
npm update npm -g

# Install mongo db
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt-get update
apt-get install -y mongodb-org

# Last Step
apt autoremove