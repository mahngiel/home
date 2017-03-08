#!/usr/bin/env bash

git clone --depth=1 git://github.com/phalcon/cphalcon.git /opt/cphalcon
cd /opt/cphalcon/build
./install

cp /srv/mahngiel/provision/phalcon/30-phalcon.ini $PHP_INI_DIR/conf.d/

#git clone git://github.com/phalcon/phalcon-devtools.git /opt/phalcon-devtools
#cd /opt/phalcon-devtools
#./phalcon.sh
#
#ln -sf /opt/phalcon-devtools/phalcon.php /usr/local/bin/phalcon
#chmod ugo+x /usr/local/bin/phalcon
