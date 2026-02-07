ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
php -v
apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite composer
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite composer
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite composer
php -v
update-alternatives --set php /usr/bin/php8.3
php -v
composer install
apt-get install -y php8.3-xml php8.3-simplexml
composer install
composer clear-cache && composer install
composer install --no-plugins
apt-get install -y php8.3-intl
composer install
apt-get install -y php8.3-mbstring
composer install
vendor/bin/phpunit
ls -la /tmp/doctrine_failed_connection_292.db
touch /tmp/doctrine_failed_connection_292.db && chmod 0444 /tmp/doctrine_failed_connection_292.db
vendor/bin/phpunit
