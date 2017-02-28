#!/usr/bin/env bash

echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" | sudo tee -a /etc/apt/sources.list

sudo apt-get install -y apache2

sudo a2enmod \
  headers \
  rewrite \
  ssl \
  status \
  authz_host \
  include \
  proxy \
  proxy_http \
  deflate \
  actions \
  alias

sudo a2dissite 000-default.conf

sudo cp /opt/apache/home.conf /etc/apache2/sites-available/home.conf

sudo a2ensite home.conf

sudo service apache2 restart
