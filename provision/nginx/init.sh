#!/usr/bin/env bash

sudo apt-get install -y nginx

sudo cp /vagrant/provision/nginx/home.conf /etc/nginx/sites-available

sudo rm /etc/nginx/sites-enabled/default

sudo ln -sf /etc/nginx/sites-available/home.conf /etc/nginx/sites-enabled/home.conf
