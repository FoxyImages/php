#!/bin/bash
set -e
source /build/buildconfig
set -x

echo "en_US.UTF-8 UTF-8" > /var/lib/locales/supported.d/en
echo "cs_CZ.UTF-8 UTF-8" > /var/lib/locales/supported.d/cs

## Upgrade all packages.
apt-get update
apt-get dist-upgrade -y --no-install-recommends -o Dpkg::Options::="--force-confdef"
