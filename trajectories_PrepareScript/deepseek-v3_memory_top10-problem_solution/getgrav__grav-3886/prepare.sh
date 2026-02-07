ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "composer.json"
apt-get update
apt-get install -y git zip php php-gd php-opcache php-curl php-zip php-dom php-xml php-mbstring
php -v
composer install --prefer-dist --no-progress
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --prefer-dist --no-progress
vendor/bin/codecept run
