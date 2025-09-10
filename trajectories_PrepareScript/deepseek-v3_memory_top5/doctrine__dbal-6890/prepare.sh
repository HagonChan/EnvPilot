ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
php -v
apt-get update && apt-get install -y php8.4
apt-get install -y php8.3
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.3-curl php8.3-dom php8.3-mbstring php8.3-zip
composer install
./vendor/bin/phpunit
