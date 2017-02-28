#!/usr/bin/env bash

sudo apt-get install -y \
  php7.0-dev \
  php7.0-mysql

sudo git clone --depth=1 git://github.com/xdebug/xdebug.git /opt/xdebug
cd /opt/xdebug
sudo phpize
sudo ./configure --enable-xdebug
sudo make

sudo cp /vagrant/provision/php/30-xdebug.ini /etc/php/7.0/apache2/conf.d/
sudo cp /vagrant/provision/php/30-xdebug.ini /etc/php/7.0/cli/conf.d/

