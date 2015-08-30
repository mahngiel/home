#!/usr/bin/env bash

echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" | sudo tee -a /etc/apt/sources.list

sudo apt-get update && sudo apt-get install -y apache2 \
    libapache2-mod-php5 \
    libapache2-mod-fastcgi

sudo a2enmod rewrite headers deflate ssl actions fastcgi alias
sudo a2econf php5-fpm

sudo a2dissite 000-default.conf

sudo cp /vagrant/apache/home.conf /etc/apache2/sites-available/home.conf

sudo a2ensite home.conf

sudo service apache2 restart
