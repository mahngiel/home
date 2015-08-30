#!/usr/bin/env bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y libpcre3-dev \
  build-essential \
  gcc \
  make \
  git \
  vim

# Install mysql
echo "Installing MySQL..."
/vagrant/mysql/init.sh

# Install php
echo "Installing PHP..."
/vagrant/php/init.sh

# Install apache
/vagrant/apache/init.sh

# Install nginx
#exec /vagrant/nginx/init.sh

# Install phalcon
/vagrant/phalcon/init.sh

# Install redis
/vagrant/redis/init.sh

# Install tools
/vagrant/tools/init.sh
