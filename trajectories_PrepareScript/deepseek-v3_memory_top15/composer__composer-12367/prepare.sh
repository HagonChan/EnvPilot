ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y git unzip gzip tar
apt-get install -y php-intl php-zip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');"
apt-get install -y php8.1
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');"
curl -sS https://getcomposer.org/installer | php
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
composer install
apt-get install -y php8.1-xml
composer install
composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php8.1-mbstring
COMPOSER_PROCESS_TIMEOUT=600 composer test
./vendor/bin/phpunit
composer install --dev
ls -la vendor/bin
./vendor/bin/simple-phpunit
composer global require phpunit/phpunit
phpunit
find ~/.composer -name phpunit
/root/.composer/vendor/bin/phpunit
apt-get install -y php8.1-curl
/root/.composer/vendor/bin/phpunit
open "composer.json"
edit '"name": "composer/composer",' '"name": "composer/composer",
    "version": "1.0.0",' False
ls -la composer.json
sed -i '/"name": "composer/composer",/a \    "version": "1.0.0",' composer.json
/root/.composer/vendor/bin/phpunit
git checkout -- composer.json
open "composer.json"
edit '"name": "composer/composer",' '"name": "composer/composer",
    "version": "1.0.0",' False
sed -i '/"name": "composer/composer",/a \    "version": "1.0.0",' composer.json
php -r "echo json_decode(file_get_contents('composer.json')) ? 'Valid JSON' : 'Invalid JSON'; "
git checkout -- composer.json
apt-get install -y jq
jq '. + { "version": "1.0.0" }' composer.json > composer.tmp.json && mv composer.tmp.json composer.json
php -r "echo json_decode(file_get_contents('composer.json')) ? 'Valid JSON' : 'Invalid JSON'; "
/root/.composer/vendor/bin/phpunit
composer show -s
chmod 000 composer.json
/root/.composer/vendor/bin/phpunit

