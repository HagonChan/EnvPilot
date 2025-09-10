ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
sudo apt-get update && sudo apt-get install -y tzdata locales
apt-get update && apt-get install -y tzdata locales
apt-get install -y php8.1 php8.1-json php8.1-msgpack
apt-get install -y php8.1-cli php8.1-msgpack
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
composer config -g disable-tls true && composer install
ls -la phpunit.xml.dist
php vendor/bin/phpunit
