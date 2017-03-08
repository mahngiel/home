#!/usr/bin/env bash

git clone --depth=1 git://github.com/xdebug/xdebug.git /opt/xdebug
cd /opt/xdebug
phpize
./configure --enable-xdebug
make

cp /srv/mahngiel/provision/php/30-xdebug.ini $PHP_INI_DIR/conf.d/

