ls -la
open ".github"
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y postfix libsqlite3-0 imap mbstring openssl intl ctype filter hash curl dom json libxml tokenizer xml xmlwriter
apt-get install -y php php-imap php-mbstring php-intl php-ctype php-curl php-xml php-json php-xmlwriter
composer --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer require phpmailer/phpmailer
composer install
open "phpunit.xml.dist"
vendor/bin/phpunit
ls -la test
cp test/testbootstrap-dist.php test/testbootstrap.php
open "test/testbootstrap.php"
edit '<?php' '<?php

if (extension_loaded('"'"'mbstring'"'"')) {
    ini_set('"'"'mbstring.func_overload'"'"', 0);
    ini_set('"'"'mbstring.internal_encoding'"'"', '"'"'ASCII'"'"');
}
'
insert 'if (extension_loaded('"'"'mbstring'"'"')) {
    ini_set('"'"'mbstring.func_overload'"'"', 0);
    ini_set('"'"'mbstring.internal_encoding'"'"', '"'"'ASCII'"'"');
}
' 0
vendor/bin/phpunit
apt-get install -y postfix
service postfix start
vendor/bin/phpunit
open "/etc/postfix/main.cf"
edit 'inet_protocols = all' 'inet_interfaces = all
smtp      inet  n       -       y       -       -       smtpd
inet_protocols = all'
insert 'smtp      inet  n       -       y       -       -       smtpd
' 45
service postfix restart
edit 'smtp      inet  n       -       y       -       -       smtpd' ''
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart
open "/etc/postfix/main.cf"
service postfix restart

