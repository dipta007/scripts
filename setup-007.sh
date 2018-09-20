#!/bin/sh

# A shell script to install softwares automatically
# Run the script as root by typing: sudo sh setup.sh

# First go to home
cd ~

# First update and upgrade
apt update -y
apt upgrade -y

# Install Chrome
mkdir tmp
cd ~/tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb
apt install -yf # For dependencies
dpkg -i google-chrome*.deb # Try again
apt install -yf # Just in case
cd ~

# Python
apt install -y ipython3-notebook python3-pip
# su - forthright48 -c "pip3 install --user numpy pandas matplotlib requests"

# Install other useful packages
apt install -y git vim curl kdiff3 htop

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_7.x | -E bash -
apt update -y
apt install -y nodejs

# Fix npm permission
su - dipta007 -c "mkdir ~/.npm-global"
su - dipta007 -c "npm config set prefix '~/.npm-global'"  #Don't forget to update path

# Install some essential node packages
su - dipta007 -c "npm install npm@latest -g"
su - dipta007 -c "npm install -g nodemon gulpjs/gulp-cli"

# Install npm
apt install npm
npm update npm -g

# Install GO
snap install --classic go

# Install mongo db
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt-get update
apt-get install -y mongodb-org

# Install restricted extras (for mp3 and stuff)
apt install -y ubuntu-restricted-extras

# Git Configure
git config --global user.email "iamdipta@gmail.com"
git config --global user.name "Shubhashis Roy Dipta"
git config --global diff.tool kdiff3
git config --global merge.tool kdiff3
git config --global core.editor "vim"

# Before End. Install Java-8
add-apt-repository ppa:webupd8team/java
apt update -y
apt install oracle-java8-set-default -y


# ******************* Install softwares ******************* #

# Install ppa (like IDM in Windows)
sudo add-apt-repository ppa:persepolis/ppa
sudo apt update
sudo apt install persepolis

# Install VLC
add-apt-repository ppa:videolan/master-daily
apt update
apt install vlc qtwayland5
apt install libavcodec-extra

# Install torrent
apt-get install deluge

# Bangla Fonts
mkdir -p .fonts # -p in case .fonts is already there
cd .fonts
wget files.ekushey.org/Ekushey_OpenType_Bangla_Fonts/SolaimanLipi_Bold_10-03-12.ttf
fc-cache -f -v
cd ~add-apt-repository ppa:noobslab/apps
apt-get update
apt-get install xdman
chown -R dipta007:dipta007 ./.fonts

# install dropbox
apt-get -y install nautilus-dropbox
# Configure dropbox from system tray

# install codeblocks
add-apt-repository ppa:damien-moore/codeblocks-stable
apt update
apt install codeblocks codeblocks-contrib

# install guake (terminal)
apt-get install guake

# install vlc
apt-get install vlc

# install skype
echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skype-stable.list
wget https://repo.skype.com/data/SKYPE-GPG-KEY
apt-key add SKYPE-GPG-KEY
apt install apt-transport-https
apt update
apt install skypeforlinux

# install 7zip
apt-get install p7zip-full
# 7z x PACKAGE.7z (for extracting package)

# install play on linux (use windows apps)
add-apt-repository ppa:noobslab/apps
apt-get update
apt-get install playonlinux

# install smart git (update according to the latest version)
apt install gdebi-core
apt-get install gdebi -y
wget https://www.syntevo.com/downloads/smartgit/smartgit-18_1_4.deb
gdebi smartgit-18_1_4.deb

# install pycharm
snap install pycharm-professional --classic
# snap install pycharm-community --classic

# install goland
sudo snap install goland --classic

# install postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

# install slack
sudo apt install snapd
sudo snap install slack --classic

# Last Step
apt autoremove
apt-get install apt-transport-https ca-certificates curl software-properties-common


# **************** EXTRAS ******************
# install vs code
# install vs code extensions

# code --install-extension abusaidm.html-snippets
# code --install-extension christian-kohler.path-intellisense
# code --install-extension CoenraadS.bracket-pair-colorizer
# code --install-extension dbaeumer.jshint
# code --install-extension eamodio.gitlens
# code --install-extension eg2.tslint
# code --install-extension formulahendry.auto-close-tag
# code --install-extension formulahendry.auto-rename-tag
# code --install-extension formulahendry.code-runner
# code --install-extension ionutvmi.path-autocomplete
# code --install-extension johnpapa.Angular2
# code --install-extension kevinmcgowan.TypeScriptImport
# code --install-extension leizongmin.node-module-intellisense
# code --install-extension Mikael.Angular-BeastCode
# code --install-extension moppitz.vscode-extension-auto-import
# code --install-extension nathanchapman.JavaScriptSnippets
# code --install-extension NuclleaR.vscode-extension-auto-import
# code --install-extension PKief.material-icon-theme
# code --install-extension pmneo.tsimporter
# code --install-extension rbbit.typescript-hero
# code --install-extension shardulm94.trailing-spaces
# code --install-extension steoates.autoimport
# code --install-extension thekalinga.bootstrap4-vscode
# code --install-extension wayou.vscode-todo-highlight
# code --install-extension wix.vscode-import-cost
# code --install-extension woodywoodsta.vscode-material-syntax-dark
# code --install-extension Zignd.html-css-class-completion

# 9. Installing ibus-avro on Ubuntu 18.04
# https://askubuntu.com/questions/1035875/installing-avro-in-18-04-lts