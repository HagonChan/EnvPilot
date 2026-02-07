ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
apt-get update && apt-get install -y postfix libsqlite3-0 libssl-dev libpcre2-dev libimap-dev libmbstring-dev openssl libcurl4-openssl-dev libxml2-dev libicu-dev
apt-get install -y php-imap php-mbstring php-curl php-xml php-intl
composer install
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
apt-get install -y php composer
composer install
composer test
cp testbootstrap-dist.php testbootstrap.php
find . -name "*test*" -type f
cp test/testbootstrap-dist.php testbootstrap.php
open "testbootstrap.php"
composer test
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';'
insert '$_REQUEST['"'"'mail_username'"'"'] = '"'"'test@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' 8
sed -i 's/localhost/smtp.example.com/' testbootstrap.php
composer test
open "testbootstrap.php"
insert '$_REQUEST['"'"'mail_smtpsecure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_smtpauth'"'"'] = 1;
$_REQUEST['"'"'mail_debug'"'"'] = 0;' 10
composer test
insert '$_REQUEST['"'"'mail_dkim_domain'"'"'] = '"'"'example.com'"'"';
$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'path/to/private.key'"'"';
$_REQUEST['"'"'mail_dkim_selector'"'"'] = '"'"'phpmailer'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' 13
mkdir -p test/dkim && openssl genrsa -out test/dkim/private.key 2048
edit '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'path/to/private.key'"'"';' '$_REQUEST['"'"'mail_dkim_private'"'"'] = '"'"'test/dkim/private.key'"'"';'
sed -i 's|path/to/private.key|test/dkim/private.key|' testbootstrap.php
composer test
insert '$_REQUEST['"'"'mail_port'"'"'] = 587;
$_REQUEST['"'"'mail_timeout'"'"'] = 30;
$_REQUEST['"'"'mail_charset'"'"'] = '"'"'utf-8'"'"';
$_REQUEST['"'"'mail_encoding'"'"'] = '"'"'8bit'"'"';' 17
edit '$_REQUEST['"'"'mail_port'"'"'] = 2500;' '' True
sed -i '/mail_port = 2500/d' testbootstrap.php
echo "extension=mbstring.so" > test/php.ini && echo "extension=intl.so" >> test/php.ini
php -c test/php.ini ./vendor/bin/phpunit --no-coverage
insert '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' 21
edit '$_REQUEST['"'"'mail_port'"'"'] = 2500;' '' True
sed -i '/mail_port = 2500/d' testbootstrap.php
echo "extension=mbstring.so" > test/php.ini && echo "extension=intl.so" >> test/php.ini
php -c test/php.ini ./vendor/bin/phpunit --no-coverage
insert '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' 21
edit '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' '' True
sed -i '/mail_smtp_options = array/d' testbootstrap.php && sed -i '/mail_dkim_identity = /d' testbootstrap.php && sed -i '/mail_dkim_passphrase = /d' testbootstrap.php
php -c test/php.ini ./vendor/bin/phpunit --no-coverage
insert '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' 21
edit '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' '' True
sed -i '/mail_smtp_options = array/d' testbootstrap.php && sed -i '/mail_dkim_identity = /d' testbootstrap.php && sed -i '/mail_dkim_passphrase = /d' testbootstrap.php
php -c test/php.ini ./vendor/bin/phpunit --no-coverage
insert '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' 21
edit '$_REQUEST['"'"'mail_smtp_options'"'"'] = array('"'"'ssl'"'"' => array('"'"'verify_peer'"'"' => false, '"'"'verify_peer_name'"'"' => false, '"'"'allow_self_signed'"'"' => true));
$_REQUEST['"'"'mail_dkim_identity'"'"'] = '"'"'phpmailer@example.com'"'"';
$_REQUEST['"'"'mail_dkim_passphrase'"'"'] = '"'"''"'"';' '' True
sed -i '/mail_smtp_options = array/d' testbootstrap.php && sed -i '/mail_dkim_identity = /d' testbootstrap.php && sed -i '/mail_dkim_passphrase = /d' testbootstrap.php

