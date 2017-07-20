#!/usr/bin/env bash

# openjdk-8 related debian repository
#echo 'deb http://http.debian.net/debian jessie-backports main' | sudo tee /etc/apt/sources.list
#echo 'deb http://http.debian.net/debian jessie-backports main' | sudo tee -a /etc/apt/sources.list.d/jessie-backports.list
echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list

# Install java 8.
#sudo apt-get update && sudo apt-get install openjdk8-jdk
#sudo update-alternatives --config java
#sudo apt-get install -y -t jessie-backports openjdk-8-jdk
#sudo update-java-alternatives --set java-1.8.0-openjdk-amd64

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
