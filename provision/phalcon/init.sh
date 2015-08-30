#!/usr/bin/env bash

sudo git clone --depth=1 git://github.com/phalcon/cphalcon.git /opt/cphalcon
cd /opt/cphalcon/build
sudo ./install

sudo cp /vagrant/phalcon/30-phalcon.ini /etc/php5/fpm/conf.d/
sudo cp /vagrant/phalcon/30-phalcon.ini /etc/php5/apache2/conf.d/
sudo cp /vagrant/phalcon/30-phalcon.ini /etc/php5/cli/conf.d/

sudo service apache2 restart
sudo service php5-fpm restart

sudo git clone git://github.com/phalcon/phalcon-devtools.git /opt/phalcon-devtools
cd /opt/phalcon-devtools
sudo ./phalcon.sh

sudo ln -sf /opt/phalcon-devtools/phalcon.php /usr/local/bin/phalcon
sudo chmod ugo+x /usr/local/bin/phalcon
