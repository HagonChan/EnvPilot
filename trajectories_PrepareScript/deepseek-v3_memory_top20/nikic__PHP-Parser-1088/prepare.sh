ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
composer install
curl -sS https://getcomposer.org/installer | php -- --version=2.2.6 && mv composer.phar /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --version=2.2.6 && mv composer.phar /usr/local/bin/composer
composer --version
apt-get remove -y composer && mv /usr/local/bin/composer /usr/bin/composer
composer --version
composer install
apt-get install -y php7.4-mbstring
composer install
./vendor/bin/phpunit
