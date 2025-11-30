ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y tzdata locales
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get update && apt-get install -y php8.1 php8.1-cli php8.1-json php8.1-msgpack curl
apt-get update && apt-get install -y php8.1 php8.1-cli php8.1-msgpack curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer require nesbot/carbon
composer install
apt-get install -y php8.1-xml
composer install
apt-get install -y php8.1-zip unzip
composer install
vendor/bin/phpunit
apt-get install -y php8.1-mbstring
vendor/bin/phpunit
open "composer.json"
composer update phpstan/phpstan

