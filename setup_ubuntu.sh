#!bin/bash


#INSTALL REDIS

sudo apt-get update
sudo apt-get install redis-server
sudo systemctl enable redis-server.service
redis-cli ping

#INSTALL MONGODB

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt update
sudo apt install mongodb-org
sudo systemctl enable mongod
sudo systemctl start mongod
mongod --version

#INSTALL JAVA JRE AND JDK(DEFAULT)

sudo apt install default-jre
sudo apt install default-jdk
java --version
javac --version

#INSTALL RUBY

sudo apt install curl
curl -V
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

#INSTALL SUBLIME
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

#QT-5 
sudo apt-get install g++ qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x

## zip unzip functionality.
sudo apt-get install zip unzip

## add a user called bhargav.
sudo adduser  bhargav

## after setting it up add it to the sudo group.
sudo usermod -a -G sudo bhargav




