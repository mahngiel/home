#!/usr/bin/env bash

sudo apt-get install -y apache2 \
    libapache2-mod-php5

sudo a2enmod rewrite headers deflate ssl

sudo cp /vagrant/apache/home.conf /etc/apache2/sites-available/home.conf

sudo a2ensite home.conf

sudo service apache2 restart
