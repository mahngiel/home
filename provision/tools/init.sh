#!/usr/bin/env bash

cp /vagrant/tools/.bash_profile ~/
cp /vagrant/tools/.git-completion ~/

sudo apt install -y libpcre3-dev \
  gcc \
  make \
  git \
  vim
