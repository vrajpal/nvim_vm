#!/bin/sh

set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

apt-get update
apt install curl -y
apt install git -y 
apt install nodejs -y
apt install npm -y
apt install ripgrep -y
apt install build-essential -y
apt install firefox -y

curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/UbuntuMono.zip
unzip UbuntuMono.zip -d ~/.fonts
fc-cache -fv

git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install



echo "done!"
