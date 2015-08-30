#!/usr/bin/env bash

sudo apt-get install -y ruby nodejs

sudo apt-get install -y gem npm

sudo gem install sass
sudo npm install --global gulp gulp-ruby-sass gulp-autoprefixer gulp-minify-css gulp-jshint gulp-concat gulp-uglify gulp-imagemin gulp-notify gulp-rename gulp-livereload gulp-cache del  2>&1 >/dev/null
