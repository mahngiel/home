#!/usr/bin/env bash

sudo apt install -y php5-dev \
  php5-mysql \
  php5-fpm

sudo git clone --depth=1 git://github.com/xdebug/xdebug.git /opt/xdebug
cd /opt/xdebug
sudo phpize
sudo ./configure --enable-xdebug
sudo make

sudo cp /vagrant/provision/php/30-xdebug.ini /etc/php5/fpm/conf.d/
sudo cp /vagrant/provision/php/30-xdebug.ini /etc/php5/cli/conf.d/

sudo service php5-fpm restart
