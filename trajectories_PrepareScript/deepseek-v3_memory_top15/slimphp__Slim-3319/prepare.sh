ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml.dist"
php -v
apt-get update && apt-get install -y php7.4 php7.4-xdebug php7.4-xml php7.4-mbstring php7.4-json composer
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php7.4 php7.4-xdebug php7.4-xml php7.4-mbstring php7.4-json composer
php -v
update-alternatives --set php /usr/bin/php7.4
php -v
composer install
composer self-update
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.18
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.18
composer --version
rm -f /usr/bin/composer && ln -s /usr/local/bin/composer /usr/bin/composer
composer --version
composer install
vendor/bin/phpunit
