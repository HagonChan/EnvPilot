ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y 7z unzip gzip tar unrar xz git mercurial fossil p4 subversion
apt-get install -y unzip gzip tar unrar git mercurial fossil subversion
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');"
apt-get install -y php php-intl php-zip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
composer install
apt-get install -y php8.1-xml
composer install
composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php8.1-mbstring
COMPOSER_PROCESS_TIMEOUT=600 composer test
php -m | grep mbstring
COMPOSER_PROCESS_TIMEOUT=600 composer test --ignore-platform-req=ext-mbstring
rm -rf vendor/bin/.phpunit && COMPOSER_PROCESS_TIMEOUT=600 composer test --ignore-platform-req=ext-mbstring
mkdir -p vendor/bin/.phpunit/phpunit-9.6-0 && chmod -R 777 vendor/bin/.phpunit && COMPOSER_PROCESS_TIMEOUT=600 composer test --ignore-platform-req=ext-mbstring
COMPOSER_PROCESS_TIMEOUT=1200 composer test --ignore-platform-req=ext-mbstring
composer require --dev symfony/phpunit-bridge
COMPOSER_PROCESS_TIMEOUT=1200 composer test --ignore-platform-req=ext-mbstring
apt-get install -y php8.1-curl
COMPOSER_PROCESS_TIMEOUT=1200 composer test --ignore-platform-req=ext-mbstring
