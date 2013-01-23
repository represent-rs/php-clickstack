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

## GitHub Repo

This repository has 3 branches, with the associated plugin URLs:

- master: For all changes.

        http://cloudbees-clickstack.s3.amazonaws.com/jenkins/testing/php-plugin.zip

- testing: For changes that pass obvious tests, and need to be tested on a longer term.

        http://cloudbees-clickstack.s3.amazonaws.com/testing/php-plugin.zip

- stable: For the current stable version of the stack.

        http://cloudbees-clickstack.s3.amazonaws.com/community/php-plugin.zip

## License

This work is distributed under the Apache license, found in the LICENSE file.