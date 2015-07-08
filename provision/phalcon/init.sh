#!/usr/bin/env bash

git clone --depth=1 git://github.com/phalcon/cphalcon.git
sudo mv cphalcon.git /opt/cphalcon
cd /opt/cphalcon/build
sudo ./install

sudo cp 30-phalcon.ini /etc/php5/conf.d

