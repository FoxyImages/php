## 4.0.0 (release date: 26.11.2024)

 * Use `phusion/baseimage:noble-1.0.0` and thus `Ubuntu 24.04`
 * Added PHP 8.4
 * Updated `8`, `8-cli`, `8-fpm`, `cli`, `fpm`, `latest` version to `8.4`

## 3.0.0 (release date: 05.12.2023)

 * Added PHP 8.3
 * Make PHP 8.3 default version

## 2.0.1 (release date: 06.06.2023)

 * Added `imagick` extension

## 2.0.0 (release date: 10.12.2022)

 * Updated `8`, `8-cli`, `8-fpm`, `cli`, `fpm`, `latest` version to `8.2`

## 1.0.1 (release date: 04.11.2022)

 * Update syslog-ng.conf for Ubuntu 22.04

## 1.0.0 (release date: 25.09.2022)

 * Added PHP 8.2

## 0.9.0 (release date: 11.06.2022)

 * Use `phusion/baseimage:jammy-1.0.0` and thus `Ubuntu 22.04`
 * Removed unsupported PHP version 7.3

## 0.8.0 (release date: 22.02.2022)

 * Use `phusion/baseimage:focal-1.0.0` and thus `Ubuntu 20.04`

## 0.7.0 (release date: 26.11.2021)

 * Make PHP 8.1 default version

## 0.6.0 (release date: 21.10.2021)

 * Removed unsupported PHP version 7.2
 * Make PHP 8.0 default version for FPM
 * Added PHP 8.1

## 0.5.1 (release date: 08.04.2021)

 * Limit en locales other than `en_US`
 * Add `cs_CZ` locale

## 0.5.0 (release date: 03.12.2020)

 * Removed unsupported PHP versions 5.6, 7.0 and 7.1
 * Make PHP 8.0 default version

## 0.4.0 (release date: 10.11.2020)

 * Added PHP 8.0

## 0.3.1 (release date: 25.10.2020)

 * Updated `composer` to `2.0`
 * Removed global package `hirak/prestissimo` incompatible with new Composer

## 0.3.0 (release date: 19.10.2020)

 * Updated `phusion/baseimage` to `latest-amd64`

## 0.2.3 (release date: 05.06.2020)

 * Added `redis` extension

## 0.2.2 (release date: 04.12.2019)

 * Finally fixed installation of `php-sodium` which is not needed any more for PHP 7.2 and newer
 * Extension `php-sodium` now installs from PHP 7.0 and higher
 * Fixed `dist-upgrade` during image build

## 0.2.1 (release date: 16.08.2019)

 * Fixed installation of `php-sodium` which resulted in installation of PHP 7.1 under 5.6 image
 * Extension `php-sodium` now installs only from PHP 7.1 and higher

## 0.2.0 (release date: 15.08.2019)

 * Added PHP 7.4

## 0.1.0 (release date: 23.04.2019)

 * Initial version
