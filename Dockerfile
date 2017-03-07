FROM php:7.1-apache

MAINTAINER Mahngiel <kris@mahngiel.com>

# Update and source packages
RUN apt-get update -y \
  && apt-get install -y \
  awscli \
  build-essential \
  libcurl4-gnutls-dev \
  libfreetype6-dev \
  libjpeg-dev \
  libmcrypt-dev \
  libpcre3-dev \
  libpng-dev \
  libxml2-dev \
  libjpeg62-turbo-dev \
  libvpx-dev \
  vim \
  zlib1g-dev \
  bash \
  git

# Phpize extensions
RUN docker-php-ext-install -j$(nproc) \
 pdo_mysql

# Enable apache mods
RUN a2enmod \
  headers \
  rewrite \
  ssl \
  status \
  authz_host \
  include \
  proxy \
  proxy_http

# Prep directories
RUN mkdir -p /srv/logs
RUN chown www-data:www-data /srv -R

# Move config files into place
COPY . /srv/mahngiel

WORKDIR /srv/mahngiel

ENTRYPOINT ["/srv/mahngiel/provision/entrypoint.sh"]

