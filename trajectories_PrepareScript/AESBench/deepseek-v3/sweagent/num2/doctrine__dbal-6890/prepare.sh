ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
php -v
apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite
php -v
curl -sS https://getcomposer.org/installer | php
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php
php composer.phar install
apt-get install -y php8.3-xml
php composer.phar install
php composer.phar config audit.block-insecure false
php composer.phar install
apt-get install -y zip unzip
php composer.phar install
ls -la ci/github/phpunit
vendor/bin/phpunit -c ci/github/phpunit/pdo_sqlite.xml
apt-get install -y php8.3-mbstring
vendor/bin/phpunit -c ci/github/phpunit/pdo_sqlite.xml
