ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
apt-get update && apt-get install -y php8.3
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3
php -v
composer install
apt-get install -y composer
composer install
apt-get install -y php8.3-dom php8.3-simplexml
composer install
composer clear-cache
composer install --no-plugins
composer self-update
apt-get install -y php8.3-mbstring
composer self-update
apt-get install -y php8.3-intl
composer self-update
composer update
vendor/bin/phpunit
