#!/usr/bin/env bash

# Local development runtime concerns
if [ ${_environment} == "local" ]
then
    echo "WORKING LOCALLY"

    # Install mysql
    echo "Installing MySQL..."
    /srv/mahngiel/provision/mysql/init.sh

    # Install php
    echo "Installing PHP..."
    /srv/mahngiel/provision/php/init.sh
    /srv/mahngiel/provision/php/xdebug.sh

    # Install apache
    /srv/mahngiel/provision/apache/init.sh

    # Install phalcon
    /srv/mahngiel/provision/phalcon/init.sh

    # Install redis
    /srv/mahngiel/provision/redis/init.sh

    # Install tools
fi

apache2-foreground
