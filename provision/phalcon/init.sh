#!/usr/bin/env bash

sudo git clone --depth=1 git://github.com/phalcon/cphalcon.git /opt/cphalcon
cd /opt/cphalcon/build
sudo ./install

sudo cp /vagrant/provision/phalcon/30-phalcon.ini /etc/php5/fpm/conf.d/
sudo cp /vagrant/provision/phalcon/30-phalcon.ini /etc/php5/cli/conf.d/

sudo service php5-fpm restart

sudo git clone git://github.com/phalcon/phalcon-devtools.git /opt/phalcon-devto0ls
cd /opt/phaclon-devtools
sudo ./phalcon.sh

sudo ln -s /opt/phalcon-devtools/phalcon.php /usr/local/bin/phalcon
sudo chmod ugo+x /usr/local/bin/phalcon
