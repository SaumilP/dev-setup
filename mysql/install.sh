#!/usr/bin/env bash

#export DEBIAN_FRONTEND=noninteractive
sudo apt-get update

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt-get install -y vim curl python-software-properties
sudo apt-get update
sudo apt-get -y install mysql-server

sudo sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
sudo sed -i "s/\bkey_buffer\b/key_buffer_size/" /etc/mysql/my.cnf
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES; SET GLOBAL max_connect_errors=10000;"

sudo /etc/init.d/mysql restart
