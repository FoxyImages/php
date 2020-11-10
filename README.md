# Docker PHP image

A minimal Ubuntu image based on `phusion/baseimage` with PHP from `ppa:ondrej/php`.

## Supported tags and respective `Dockerfile` links for CLI

 * [`8.0-cli`, `8.0`, `8`, `8-cli` (*8.0/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/8.0/cli/Dockerfile)]
 * [`7.4-cli`, `7.4`, `7`, `7-cli`, `cli`, `latest` (*7.4/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.4/cli/Dockerfile)]
 * [`7.3-cli`, `7.3` (*7.3/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.3/cli/Dockerfile)
 * [`7.2-cli`, `7.2` (*7.2/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.2/cli/Dockerfile)
 * [`7.1-cli`, `7.1` (*7.1/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.1/cli/Dockerfile)
 * [`7.0-cli`, `7.0` (*7.0/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.0/cli/Dockerfile)
 * [`5.6-cli`, `5.6` (*5.6/cli/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/5.6/cli/Dockerfile)

## Supported tags and respective `Dockerfile` links for FPM

 * [`8.0-fpm`, `8-fpm` (*8.0/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/8.0/fpm/Dockerfile)
 * [`7.4-fpm`, `7-fpm`, `fpm` (*7.4/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.4/fpm/Dockerfile)
 * [`7.3-fpm` (*7.3/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.3/fpm/Dockerfile)
 * [`7.2-fpm` (*7.2/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.2/fpm/Dockerfile)
 * [`7.1-fpm` (*7.1/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.1/fpm/Dockerfile)
 * [`7.0-fpm` (*7.0/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/7.0/fpm/Dockerfile)
 * [`5.6-fpm` (*5.6/fpm/Dockerfile*)](https://github.com/FoxyImages/php-fpm/blob/master/5.6/fpm/Dockerfile)

## PHP packages installed for `cli`

 * bcmath
 * bz2
 * cli
 * curl
 * gd
 * gmp
 * imap
 * intl
 * json
 * mbstring
 * mcrypt (before php 7.2)
 * mysql
 * opcache
 * pgsql
 * readline
 * redis
 * soap
 * sodium (from php 7.0)
 * sqlite3
 * xml
 * zip

## Additional packages installed for `fpm`

 * fpm

## APT packages added

 * curl
 * git
 * unzip
