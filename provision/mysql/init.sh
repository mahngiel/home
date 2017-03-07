#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

echo "Installing MySQL ..."
apt-get install -y mysql-server

sed -i "s/127.0.0.1/192.168.30.100/g" /etc/mysql/my.cnf
service mysql restart

echo "Setting permissions ..."
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'"
