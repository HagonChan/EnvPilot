
ls -R
cat composer.json
cat phpunit.xml.dist
apt-get update && apt-get install -y php git unzip gzip tar
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php-xml
composer install
vendor/bin/phpunit
grep 'scripts' composer.json -A 10
composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php-mbstring
COMPOSER_PROCESS_TIMEOUT=600 composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test --no-dev
COMPOSER_PROCESS_TIMEOUT=600 composer update
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php-xml php-intl
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php-curl
COMPOSER_PROCESS_TIMEOUT=600 composer test
