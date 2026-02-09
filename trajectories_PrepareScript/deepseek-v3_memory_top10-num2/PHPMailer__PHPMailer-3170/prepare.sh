ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y postfix libsqlite3-0 imap mbstring openssl intl ctype filter hash curl dom json libxml tokenizer xml xmlwriter
apt-get install -y php php-cli php-common php-imap php-mbstring php-openssl php-intl php-ctype php-curl php-dom php-json php-xml php-tokenizer php-xmlwriter
apt-get install -y php8.1 php8.1-cli php8.1-common php8.1-imap php8.1-mbstring php8.1-intl php8.1-curl php8.1-xml php8.1-tokenizer
apt-get install -y postfix libsqlite3-0
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y unzip php8.1-zip
composer install
./vendor/bin/phpunit
cp testbootstrap-dist.php testbootstrap.php
find . -name "testbootstrap-dist.php"
cp test/testbootstrap-dist.php testbootstrap.php
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';'
chmod +w testbootstrap.php
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';'
echo "\n\$_REQUEST['mail_username'] = 'user@example.com';\n\$_REQUEST['mail_password'] = 'password';" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'
echo "\n\$_REQUEST['mail_auth'] = true;\n\$_REQUEST['mail_secure'] = 'tls';\n\$_REQUEST['mail_port'] = 587;" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'
echo "\n\$_REQUEST['mail_auth'] = true;\n\$_REQUEST['mail_secure'] = 'tls';\n\$_REQUEST['mail_port'] = 587;" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'
echo "\n\$_REQUEST['mail_auth'] = true;\n\$_REQUEST['mail_secure'] = 'tls';\n\$_REQUEST['mail_port'] = 587;" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'
echo "\n\$_REQUEST['mail_auth'] = true;\n\$_REQUEST['mail_secure'] = 'tls';\n\$_REQUEST['mail_port'] = 587;" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'
echo "\n\$_REQUEST['mail_auth'] = true;\n\$_REQUEST['mail_secure'] = 'tls';\n\$_REQUEST['mail_port'] = 587;" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'
echo "\n\$_REQUEST['mail_auth'] = true;\n\$_REQUEST['mail_secure'] = 'tls';\n\$_REQUEST['mail_port'] = 587;" >> testbootstrap.php
./vendor/bin/phpunit
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_host'"'"'] = '"'"'localhost'"'"';' '$_REQUEST['"'"'mail_host'"'"'] = '"'"'smtp.example.com'"'"';
$_REQUEST['"'"'mail_username'"'"'] = '"'"'user@example.com'"'"';
$_REQUEST['"'"'mail_password'"'"'] = '"'"'password'"'"';
$_REQUEST['"'"'mail_auth'"'"'] = true;
$_REQUEST['"'"'mail_secure'"'"'] = '"'"'tls'"'"';
$_REQUEST['"'"'mail_port'"'"'] = 587;'

