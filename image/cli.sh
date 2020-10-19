#!/bin/bash
set -e
source /build/buildconfig
set -x

LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

apt-get update
$minimal_apt_get_install \
	php$1-bcmath \
	php$1-bz2 \
	php$1-cli \
	php$1-curl \
	php$1-gd \
	php$1-gmp \
	php$1-imap \
	php$1-intl \
	php$1-json \
	php$1-mbstring \
	php$1-mysql \
	php$1-opcache \
	php$1-pgsql \
	php$1-readline \
	php$1-redis \
	php$1-soap \
	php$1-sqlite3 \
	php$1-xml \
	php$1-zip \
	unzip \
	curl \
	git

PHP_VER=`echo $1 | sed -e 's/\.//g'`
if [ "$PHP_VER" -lt "72" ]; then
	$minimal_apt_get_install php$1-mcrypt
fi
if [ "$PHP_VER" == "70" ]; then
	$minimal_apt_get_install php$1-sodium
fi
if [ "$PHP_VER" == "71" ]; then
	$minimal_apt_get_install php$1-sodium
fi

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Composer speedup
composer global require hirak/prestissimo:@stable
