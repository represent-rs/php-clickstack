plugin_name = php-plugin

publish_bucket = cloudbees-clickstack
publish_repo = testing
publish_url = s3://$(publish_bucket)/$(publish_repo)/

deps = lib/php-5.4.12.zip lib/httpd-2.4.4.zip lib/mysql-c-6.0.2.zip

pkg_files = README.md LICENSE conf control lib setup functions

include plugin.mk

base_url = http://cloudbees-clickstack.s3.amazonaws.com

lib/%.zip:
	mkdir -p lib
	wget -qO $@ $(base_url)/$@