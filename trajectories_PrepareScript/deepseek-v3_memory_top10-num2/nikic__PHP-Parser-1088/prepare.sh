ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get update && sudo apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
composer self-update --2.2
php -r "copy('https://getcomposer.org/download/2.2.18/composer.phar', 'composer.phar');" && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer
composer --version
/usr/local/bin/composer --version
COMPOSER_ROOT_VERSION=dev-master /usr/local/bin/composer update --no-progress --prefer-dist
apt-get install -y php7.4-mbstring
COMPOSER_ROOT_VERSION=dev-master /usr/local/bin/composer update --no-progress --prefer-dist
php vendor/bin/phpunit
