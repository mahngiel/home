<?php

error_reporting( E_ALL );

define( 'APP_PATH', realpath( '..' ) );

try
{
    require APP_PATH . '/vendor/autoload.php';

    // Env vars
    $env = new Dotenv\Dotenv( APP_PATH );

    /**
     * Read the configuration
     */
    $config = include APP_PATH . "/app/config/config.php";

    /**
     * Read auto-loader
     */
    include APP_PATH . "/app/config/loader.php";

    /**
     * Read services
     */
    include APP_PATH . "/app/config/services.php";

    /**
     * Handle the request
     */
    $application = new \Phalcon\Mvc\Application( $di );

    echo $application->handle()->getContent();
}
catch ( \Throwable $e )
{
    echo $e->getMessage();
}
