#!/usr/bin/env bash

rm /etc/apache2/sites-enabled/*

cp /srv/mahngiel/provision/apache/home.conf /etc/apache2/sites-enabled/home.conf

service apache2 reload
