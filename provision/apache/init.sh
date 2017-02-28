#!/usr/bin/env bash

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

sudo cp /vagrant/provision/apache/home.conf /etc/apache2/sites-available/home.conf

sudo a2ensite home.conf

sudo service apache2 restart

