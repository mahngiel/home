#!/usr/bin/env bash

echo "Installing redis server"
cd /opt
sudo wget http://download.redis.io/releases/redis-3.0.2.tar.gz
sudo tar -xzvf redis-3.0.2.tar.gz
cd redis-3.0.2
sudo make
sudo make install
sudo cp /vagrant/redis/redis_init_script /etc/init.d/redis_6379
sudo cp /vagrant/redis/redis.conf /etc/redis.conf
sudo update-rc.d redis_6379 defaults
sudo /etc/init.d/redis_6379 start
