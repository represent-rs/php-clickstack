# PHP

## Implementations

If you'd like to test this stack, have a look at the ClickStarts that implement
it:

####[Wordpress](https://github.com/cloudbees-community/wordpress-clickstart)

## About

This stack simply serves your PHP and other files with Apache.

To deploy, just zip your files and deploy them with:

    bees app:deploy -a MY_APP -t php \
    -RPLUGIN.SRC.php=http://cloudbees-clickstack.s3.amazonaws.com/community/php-plugin.zip \
    files.zip

It's that easy!

## Implementations

###[Drupal](https://github.com/cloudbees-community/drupal-clickstack)

## Features

#### Upload configuration

To allow for uploads, you have to set the maxPost variable (in MB):

    bees config:set -a MY_APP -PmaxPost=10

Otherwise, PHP uploads are disabled, and the max POST size will be 100KB

#### Logging

Logs are available in both $log_dir and stdout, the latter of which is captured
by the CloudBees logger. To change the Apache log level, specify:

    bees config:set -a MY_APP -PlogLevel=debug

Default is "info"

#### Debugging
    
A debug mode is available to debug this stack and/or your application.
It will produce more logs during setup and start, as well as set the logging
level of Apache to debug. Once you go out of debugging mode, your previous
apache log level will be used. To use debug mode, execute:

    bees config:set -a MY_APP -Pdebug=true

#### CloudBees Databases

First, you'll need to bind databases to your app:

    bees db:create MY_DB
    bees app:create MY_APP
    bees app:bind -a MY_APP -db MY_DB -as binding

In your application, you will have access to the following environment 
variables:

    MYSQL_USERNAME_BINDING
    MYSQL_HOST_BINDING
    MYSQL_PASSWORD_BINDING
    MYSQL_PORT_BINDING
    MYSQL_DB_BINDING


#### Overriding Apache and PHP configuration files

To override the configuration files, create a .conf directory in your 
application. The following files are available for you to write:

    httpd.head.conf 
    httpd.site.conf
    httpd.tail.conf
    php.ini

Typical uses:

- httpd.head.conf: Load additional Apache modules. This file is included after
the apache modules are loaded.
- httpd.site.conf: Re-using your .htaccess configuration directives. This
file is included at the end of 
- httpd.tail.conf: Specify or override Apache httpd configuration directives.
This file is included.

This might be useful if you want to write security directives for mod_security, 
or otherwise re-use an existing .htaccess configuration file, which would have 
to be moved to .conf/httpd.site.conf

#### NewRelic Support
    
Simply activate NewRelic in the CloudBees application configuration tab.

[Source code](https://github.com/cloudbees-community/newrelic-php-clickstack)

#### PHP Mail function

This stack supports the PHP mail() function which goes through our partner 
SendGrid. Simply subscribe to SendGrid to profit from this functionality

[Source code](https://github.com/cloudbees-community/sendgrid-php-clickstack)

## Included packages

For more details about how php, httpd and other packages are compiled, please 
check here for all the package definitions:

###[GenApp binary packages](https://github.com/genapp-plugins-devel)

## License

This work is distributed under the Apache license, found in the LICENSE file.