#!/bin/bash

# : <<'#__ATOM__'

#
# 10k game development installer
# @copyright 2017 YuTanaka@AmuseOne
# @license MIT
#

cd ~

# __UPDATE_APTGET__
sudo apt-get update


#__NODE__
# 参考URL http://qiita.com/seibe/items/36cef7df85fe2cefa3ea

echo -Install Node-

sudo apt-get install -y nodejs npm

sudo npm cache clean
sudo npm install n -g

sudo n stable
sudo ln -sf /usr/local/bin/node /usr/bin/node

sudo apt-get purge -y nodejs npm

echo -Install Node done-


#__ATOM__
echo -Install Atom-

echo --Install gdebi--
# http://unskilled.site/%E3%83%AD%E3%83%BC%E3%82%AB%E3%83%AB%E3%81%A7deb%E3%83%91%E3%83%83%E3%82%B1%E3%83%BC%E3%82%B8%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%99%E3%82%8B%E3%81%A8%E3%81%8D/
sudo apt install gdebi -y

echo --Install Atom--
wget https://github.com/atom/atom/releases/download/v1.16.0/atom-amd64.deb
sudo gdebi atom-amd64.deb
rm -f ./atom-amd64.deb

## install package
apm install atom-html-preview
apm install emmet
apm install atom-ternjs

echo -Install Atom done-


#__Chrome__
echo -Install Google Chrome-

sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update

sudo apt-get install google-chrome-stable -y

sudo apt-get install -f -y

echo -Install Google Chrome done-


#__Grunt__
echo -Install Grunt-

sudo npm install -g grunt-cli

echo -Install Grunt done-


#__Phaser__
echo -Install Phaser-

mkdir phaser
cd phaser
npm install phaser-ce

echo -Install Phaser done-

#__MAKE_NEW_PHASER_PROJECT_FILE__
# wget create-phaser.sh
chmod 700 ~/phaser/create-phaser.sh


#__FINISH__
sudo apt autoremove -y
chmod 600 ~/install-gdev.sh

