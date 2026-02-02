find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file azure-pipelines.yml
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
find_file README.md
open "/testbed/README.md"
find_file Makefile
find_file tox.ini
find_file environment.yml
ls -la
open ".github/workflows/ci.yml"
open "phpunit.xml.dist"
cat composer.json
php -v
apt-get update
apt-get install -y php
php -v
composer install
apt-get install -y composer
composer install
apt-get install -y php8.1-xml
composer install
phpunit
./vendor/bin/phpunit
ls -la vendor/bin
./vendor/bin/simple-phpunit
apt-get install -y php-curl
composer install
./vendor/bin/simple-phpunit
ping -c 4 bitbucket.org
apt-get install -y iputils-ping
ping -c 4 bitbucket.org
cat /etc/resolv.conf
apt-get install -y dnsutils
nslookup bitbucket.org
ping -c 4 8.8.8.8
echo "nameserver 8.8.8.8" > /etc/resolv.conf
nslookup bitbucket.org
composer install
./vendor/bin/simple-phpunit
cat composer.json
cat phpunit.xml.dist
cat tests/bootstrap.php
cat src/bootstrap.php

