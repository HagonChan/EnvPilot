ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update
apt-get install -y php git p7zip-full unzip gzip tar unrar xz-utils mercurial fossil perforce subversion php-intl php-zip
php -v
apt-get install -y php-cli
php -v
php -m
php -i | grep -i intl
apt-get install -y php-intl
php -m | grep intl
php -m | grep zip
apt-get install -y php-zip
php -m | grep zip
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php-xml
php -m | grep simplexml
php --ini
php -m | grep -i simplexml
composer install
composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php-mbstring
php -m | grep mbstring
COMPOSER_PROCESS_TIMEOUT=1200 composer test
systemctl restart php8.1-fpm
service php8.1-fpm restart
composer clear-cache
COMPOSER_PROCESS_TIMEOUT=1200 composer test --ignore-platform-req=ext-mbstring
