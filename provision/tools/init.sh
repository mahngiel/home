#!/usr/bin/env bash

cp /vagrant/tools/.bash_profile ~/
cp /vagrant/tools/.git-completion ~/

sudo apt install -y libpcre3-dev \
  gcc \
  make \
  git \
  vim \
  ruby \
  gem \
  nodejs \
  npm

sudo gem install sass
sudo npm install --global gulp
sudo npm install gulp --save-dev
sudo npm install gulp-ruby-sass gulp-autoprefixer gulp-minify-css gulp-jshint gulp-concat gulp-uglify gulp-imagemin gulp-notify gulp-rename gulp-livereload gulp-cache del --save-dev
