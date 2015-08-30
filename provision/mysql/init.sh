#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

echo "Installing MySQL 5.6 ..."
sudo apt-get install -y mysql-server-5.6

sudo sed -i "s/127.0.0.1/192.168.30.100/g" /etc/mysql/my.cnf
sudo service mysql restart

echo "Setting permissions ..."
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'"
