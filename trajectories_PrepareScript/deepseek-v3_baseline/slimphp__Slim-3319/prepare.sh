ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
composer --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get update && apt-get install -y zip unzip
composer install
vendor/bin/phpunit
