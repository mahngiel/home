#!/usr/bin/env bash

apt-get install -y \
  ruby \
  nodejs \
  gem \
  npm

gem install sass
npm install --global gulp gulp-ruby-sass gulp-autoprefixer gulp-minify-css gulp-jshint gulp-concat gulp-uglify gulp-imagemin gulp-notify gulp-rename gulp-livereload gulp-cache del  2>&1 >/dev/null
