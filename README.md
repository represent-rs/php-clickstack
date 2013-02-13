# PHP

## Implementations

If you'd like to test this stack, have a look at the ClickStarts that implement it:

####[Wordpress](https://github.com/benjaminsavoy/wordpress-clickstart)

## About

This stack simply serves your PHP and other files with Apache.

To deploy, just zip your files and deploy them with:

    bees app:deploy -a MY_APP -t php \
    -RPLUGIN.SRC.php=http://cloudbees-clickstack.s3.amazonaws.com/community/php-plugin.zip \
    files.zip

It's that easy!

## Implementations

###[Drupal](https://github.com/benjaminsavoy/drupal-clickstack)

## Features

#### Upload configuration

To allow for uploads, you have to set the maxPost variable (in MB):
    bees config:set MY_APP maxPost=10

Otherwise, PHP uploads are disabled, and the max POST size will be 100KB

#### CloudBees Databases

First, you'll need to bind databases to your app:

    bees db:create MY_DB
    bees app:create MY_APP
    bees app:bind -a MY_APP -db MY_DB -as binding

In your application, you will have access to the following environment variables:

    MYSQL_USERNAME_BINDING
    MYSQL_HOST_BINDING
    MYSQL_PASSWORD_BINDING
    MYSQL_PORT_BINDING
    MYSQL_DB_BINDING

#### Logging

Logs are available in both $log_dir and stdout, the latter of which is captured by the CloudBees logger. To change the Apache log level, specify:

    bees config:set MY_APP logLevel=debug

Default is "info"

#### Overriding Apache configuration files

To override the configuration files, create a .conf directory in your application. The following files are available for you to write:

    # Include after the ServerRoot and Bind directives, but before anything else.
    httpd.head.conf 
    # Include in the site's Directory directive
    httpd.site.conf
    # Include at the end of the file
    httpd.tail.conf

This might be useful if you want to write security directives for mod_security, or otherwise re-use an existing .htaccess configuration file, which would have to be moved to .conf/httpd.site.conf

#### NewRelic Support
    
Simply activate NewRelic in the CloudBees application configuration tab.

#### Restart and stop functions

If your instance doesn't respond anymore or if Apache is in a bad state,
you can try issuing an apache restart (or respectively stop) with:

    app:instance:invoke MY_APP -cs restart -i INSTANCE_ID

#### PHP Mail function

This stack supports the PHP mail() function which goes through our partner SendGrid.

## Included packages

For more details about how php, httpd and other packages are compiled, please check here for all the package definitions:

###[GenApp binary packages](https://github.com/genapp-plugins-devel)

## License

This work is distributed under the Apache license, found in the LICENSE file.