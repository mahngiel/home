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
  libvpx-dev \
  && rm -rf /var/lib/apt/lists/*

# Install mysql
echo "Installing MySQL..."
/opt/mysql/init.sh

# Install php
echo "Installing PHP..."
/opt/php/init.sh

# Install apache
/opt/apache/init.sh

# Install phalcon
/opt/phalcon/init.sh

# Install redis
/opt/redis/init.sh

# Install tools
/opt/tools/init.sh
