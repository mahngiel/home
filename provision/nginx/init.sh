#!/usr/bin/env bash

apt-get install -y nginx

cp /vagrant/provision/nginx/home.conf /etc/nginx/sites-available

rm /etc/nginx/sites-enabled/default

ln -sf /etc/nginx/sites-available/home.conf /etc/nginx/sites-enabled/home.conf
