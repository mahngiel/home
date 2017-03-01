#!/usr/bin/env bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y libpcre3-dev \
  build-essential \
  gcc \
  make \
  git \
  vim \
  zlib1g-dev \
  libjpeg-dev \
  libpng-dev \
  libfreetype6-dev \
  libcurl4-gnutls-dev \
  libxml2-dev \
  libmcrypt-dev \
  libvpx-dev

# Install mysql
echo "Installing MySQL..."
/vagrant/provision/mysql/init.sh

# Install php
echo "Installing PHP..."
/vagrant/provision/php/init.sh

# Install apache
/vagrant/provision/apache/init.sh

# Install phalcon
/vagrant/provision/phalcon/init.sh

# Install redis
/vagrant/provision/redis/init.sh

# Install tools
#/vagrant/provision/tools/init.sh
