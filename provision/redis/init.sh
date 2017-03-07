#!/usr/bin/env bash

echo "Installing redis server"
cd /opt
wget http://download.redis.io/releases/redis-3.2.8.tar.gz
tar -xzvf redis-3.2.8.tar.gz
cd redis-3.2.8
make
make install

cp /srv/mahngiel/provision/redis/redis_init_script /etc/init.d/redis_6379
cp /srv/mahngiel/provision/redis/redis.conf /etc/redis.conf

update-rc.d redis_6379 defaults
/etc/init.d/redis_6379 start
