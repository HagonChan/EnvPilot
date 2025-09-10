ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
php -v
apt-get update && apt-get install -y php7.4 php7.4-xdebug
apt-get install -y php-pear php7.4-dev
apt-cache search php7.4
apt-get install -y php8.2 php8.2-xdebug
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update && apt-get install -y php7.4 php7.4-xdebug
php -v
apt-get install -y composer
composer --version
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
composer --version
php /usr/local/bin/composer --version
open "composer.json"
php /usr/local/bin/composer install
apt-get install -y php7.4-xml
php /usr/local/bin/composer install
apt-get install -y php7.4-mbstring
php /usr/local/bin/composer install
php vendor/bin/phpunit
