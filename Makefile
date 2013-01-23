plugin_name = php-plugin
publish_bucket = cloudbees-clickstack
publish_repo = testing
publish_url = s3://$(publish_bucket)/$(publish_repo)/

base_url = http://cloudbees-clickstack.s3.amazonaws.com

deps = php

pkg_files = LICENSE setup php

include plugin.mk

php_core_gitrepo = git://github.com/benjaminsavoy/php-core.git

php:
	git clone $(php_core_gitrepo) php
	rm -rf php/.git*
	cd php; make