ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
php -v
apt-get update && apt-get install -y php7.4 php7.4-xdebug
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php7.4 php7.4-xdebug
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php7.4-xml php7.4-dom
composer install
apt-get install -y php7.4-mbstring
composer install
apt-get install -y zip unzip
composer install
vendor/bin/phpunit --coverage-clover clover.xml
