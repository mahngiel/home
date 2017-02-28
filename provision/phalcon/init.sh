#!/usr/bin/env bash

sudo git clone --depth=1 git://github.com/phalcon/cphalcon.git /opt/cphalcon
cd /opt/cphalcon/build
sudo ./install

sudo cp /vagrant/provision/phalcon/30-phalcon.ini /etc/php/7.0/apache2/conf.d/
sudo cp /vagrant/provision/phalcon/30-phalcon.ini /etc/php/7.0/cli/conf.d/

sudo service apache2 restart

sudo git clone git://github.com/phalcon/phalcon-devtools.git /opt/phalcon-devtools
cd /opt/phalcon-devtools
sudo ./phalcon.sh

sudo ln -sf /opt/phalcon-devtools/phalcon.php /usr/local/bin/phalcon
sudo chmod ugo+x /usr/local/bin/phalcon
