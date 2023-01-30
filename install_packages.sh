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

