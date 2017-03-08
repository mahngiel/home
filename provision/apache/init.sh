#!/usr/bin/env bash

cp /srv/mahngiel/provision/apache/apache2.conf $APACHE_CONFDIR/

rm $APACHE_CONFDIR/sites-enabled/*

cp /srv/mahngiel/provision/apache/home.conf $APACHE_CONFDIR/sites-enabled/home.conf
