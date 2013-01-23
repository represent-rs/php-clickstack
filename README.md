# PHP

## Implementations

If you'd like to test this stack, have a look at the ClickStarts that implement it:

####[Phpinfo](https://github.com/benjaminsavoy/phpinfo-clickstart)

## About

This stack simply serves your PHP and other files with Apache.

To deploy, just zip your files and deploy them with:

    bees app:deploy -a MY_APP -t php \
    -RPLUGIN.SRC.php=http://cloudbees-clickstack.s3.amazonaws.com/community/php-plugin.zip \
    files.zip

It's that easy!

## More info

###[PHP Core plugin](https://github.com/benjaminsavoy/php-core)

## License

This work is distributed under the Apache license, found in the LICENSE file.