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
	php$1-imagick \
	php$1-mbstring \
	php$1-mysql \
	php$1-opcache \
	php$1-pgsql \
	php$1-readline \
	php$1-soap \
	php$1-sqlite3 \
	php$1-xml \
	php$1-zip \
	unzip \
	curl \
	git

PHP_VER=`echo $1 | sed -e 's/\.//g'`
if [ "$PHP_VER" -lt "80" ]; then
	$minimal_apt_get_install php$1-json
fi
if [ "$PHP_VER" -lt "80" ]; then
	$minimal_apt_get_install php$1-redis
fi

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
