ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y postfix libsqlite3-0 php-imap php-mbstring php-openssl php-intl php-ctype php-filter php-hash php-curl php-dom php-json php-xml php-tokenizer php-xmlwriter
php -m
apt-get install -y php8.1 php8.1-cli php8.1-common php8.1-mbstring php8.1-xml php8.1-curl php8.1-json php8.1-intl php8.1-imap php8.1-sqlite3
apt-get install -y php8.1 php8.1-cli php8.1-common php8.1-mbstring php8.1-xml php8.1-curl php8.1-intl php8.1-imap php8.1-sqlite3
php -v && php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
open "composer.json"
composer install
composer test
cp testbootstrap-dist.php testbootstrap.php
ls -la test/
cp test/testbootstrap-dist.php testbootstrap.php
open "testbootstrap.php"
composer test
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' False
insert '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' 8
composer test
apt-get install -y postfix
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"''"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"''"'"';' False
insert '$_REQUEST['"'"'mail_username'"'"'] = '"'"''"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"''"'"';' 8
edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' False

edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';\n$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True
composer test
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';\n$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True

edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True

sed -i '/mail_username = .*user@example.com/d' testbootstrap.php && sed -i '/mail_password = .*password/d' testbootstrap.php
open "testbootstrap.php"

edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True
sed -i '/mail_username = .*user@example.com/d' testbootstrap.php && sed -i '/mail_password = .*password/d' testbootstrap.php
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True
sed -i '/mail_username = .*user@example.com/d' testbootstrap.php && sed -i '/mail_password = .*password/d' testbootstrap.php
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True
sed -i '/mail_username = .*user@example.com/d' testbootstrap.php && sed -i '/mail_password = .*password/d' testbootstrap.php
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';' '' True
sed -i '/mail_username = .*user@example.com/d' testbootstrap.php && sed -i '/mail_password = .*password/d' testbootstrap.php

