ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
apt-get update && apt-get install -y postfix libsqlite3-0 php-imap php-mbstring php-openssl php-intl php-curl php-dom php-json php-xml php-tokenizer
apt-get install -y php-common php-cli php-json php-xml php-mbstring php-intl php-curl php-tokenizer
php -m
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y zip unzip
composer install
composer test
cp test/testbootstrap-dist.php test/testbootstrap.php
apt-get install -y php-imap
php -m | grep imap
open "test/testbootstrap.php"
composer test
apt-get install -y postfix
apt-get install -y sendmail
apt-get install -y postfix
composer test
postconf -e "inet_interfaces = loopback-only" "inet_protocols = all" "smtpd_port = 2500" && service postfix restart
open "/etc/postfix/main.cf"
open "/etc/postfix/master.cf"
edit '#smtp      inet  n       -       y       -       1       postscreen' '#smtp      inet  n       -       y       -       1       postscreen
2500      inet  n       -       y       -       -       smtpd'
echo "2500      inet  n       -       y       -       -       smtpd" >> /etc/postfix/master.cf
service postfix reload
open "/etc/postfix/main.cf"
edit 'smtpd_port = 2500' ''
sed -i '/smtpd_port = 2500/d' /etc/postfix/main.cf
service postfix reload
composer test

create test_php.ini
edit '' 'extension=mbstring.so
disable_functions=mb_send_mail

extension=intl.so
disable_functions=intl_error_name'
echo -e "extension=mbstring.so\ndisable_functions=mb_send_mail\n\nextension=intl.so\ndisable_functions=intl_error_name" > test_php.ini
php -c test_php.ini ./vendor/bin/phpunit
php --ini | grep 'Loaded Configuration File'
open "/etc/php/8.1/cli/php.ini"
search_file extension=mbstring.so /etc/php/8.1/cli/php.ini
search_file extension=intl.so /etc/php/8.1/cli/php.ini
ls -la /etc/php/8.1/cli/conf.d/
mv /etc/php/8.1/cli/conf.d/20-mbstring.ini /etc/php/8.1/cli/conf.d/20-mbstring.ini.bak
mv /etc/php/8.1/cli/conf.d/20-intl.ini /etc/php/8.1/cli/conf.d/20-intl.ini.bak
php -m | grep -E 'mbstring|intl'
composer test

