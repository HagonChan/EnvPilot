ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y postfix libsqlite3-0 php-imap php-mbstring php-openssl php-intl php-ctype php-filter php-hash php-curl php-dom php-json php-xml php-tokenizer php-xmlwriter
apt-get install -y php8.1-openssl php8.1-filter php8.1-hash php8.1-common php8.1-xml php8.1-json php8.1-mbstring php8.1-curl php8.1-intl php8.1-tokenizer
apt-get install -y php8.1
apt-get install -y php8.1-openssl php8.1-filter php8.1-hash php8.1-common php8.1-xml php8.1-json php8.1-mbstring php8.1-curl php8.1-intl php8.1-tokenizer
apt-get install -y php8.1-common php8.1-xml php8.1-mbstring php8.1-curl php8.1-intl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y zip unzip
composer install
./vendor/bin/phpunit
cp testbootstrap-dist.php testbootstrap.php
find . -name "testbootstrap-dist.php"
cp ./test/testbootstrap-dist.php ./testbootstrap.php
apt-get install -y php8.1-imap
./vendor/bin/phpunit
open "./testbootstrap.php"
edit '<?php

$_REQUEST['"'"'submitted'"'"'] = 1;
$_REQUEST['"'"'mail_to'"'"'] = '"'"'somebody@example.com'"'"';
$_REQUEST['"'"'mail_from'"'"'] = '"'"'phpunit@example.com'"'"';
$_REQUEST['"'"'mail_cc'"'"'] = '"'"'cc@example.com'"'"';
$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 2500;' '<?php

$_REQUEST['"'"'submitted'"'"'] = 1;
$_REQUEST['"'"'mail_to'"'"'] = '"'"'somebody@example.com'"'"';
$_REQUEST['"'"'mail_from'"'"'] = '"'"'phpunit@example.com'"'"';
$_REQUEST['"'"'mail_cc'"'"'] = '"'"'cc@example.com'"'"';
$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 2500;
$_REQUEST['"'"'mail_smtpuser'"'"'] = '"'"'user'"'"';
$_REQUEST['"'"'mail_smtppass'"'"'] = '"'"'pass'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';'

insert '$_REQUEST['"'"'mail_smtpuser'"'"'] = '"'"'user'"'"';
$_REQUEST['"'"'mail_smtppass'"'"'] = '"'"'pass'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';'
./vendor/bin/phpunit
insert '$_REQUEST['"'"'mail_dkim_domain'"'"'] = '"'"'example.com'"'"';
$_REQUEST['"'"'mail_dkim_selector'"'"'] = '"'"'phpmailer'"'"';
$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'file:///path/to/private.key'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"'passphrase'"'"';'
find . -name "*.key"
openssl genrsa -out test_dkim_private.key 2048
edit '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'file:///path/to/private.key'"'"';' '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'file:///testbed/test_dkim_private.key'"'"';'
insert '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'file:///testbed/test_dkim_private.key'"'"';'
edit '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'file:///path/to/private.key'"'"';' ''

edit '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'file:///path/to/private.key'"'"';\n$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"'passphrase'"'"';' '$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"'passphrase'"'"';'
cat testbootstrap.php
sed -i '15d' testbootstrap.php
cat testbootstrap.php
./vendor/bin/phpunit
php -i | grep 'Configuration File'
ls -la /etc/php/8.1/cli/conf.d
mv /etc/php/8.1/cli/conf.d/20-mbstring.ini /etc/php/8.1/cli/conf.d/20-mbstring.ini.disabled && mv /etc/php/8.1/cli/conf.d/20-intl.ini /etc/php/8.1/cli/conf.d/20-intl.ini.disabled
./vendor/bin/phpunit
mv /etc/php/8.1/cli/conf.d/20-mbstring.ini.disabled /etc/php/8.1/cli/conf.d/20-mbstring.ini
./vendor/bin/phpunit --exclude-group requires-mbstring-disabled
apt-get install -y php8.1-intl
php -m | grep intl
php -i | grep 'intl'
ls -la /etc/php/8.1/cli/conf.d/ | grep intl
mv /etc/php/8.1/cli/conf.d/20-intl.ini.disabled /etc/php/8.1/cli/conf.d/20-intl.ini

