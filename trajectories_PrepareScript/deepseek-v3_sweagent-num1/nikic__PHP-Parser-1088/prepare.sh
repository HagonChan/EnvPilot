ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
php -v
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get install -y php7.4 php7.4-cli php7.4-xml composer
php -v && composer --version
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && php -r "unlink('composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && php -r "unlink('composer-setup.php');"
composer --version
export PATH=/usr/local/bin:$PATH && composer --version
ls -la
composer install
apt-get install -y php7.4-mbstring
composer install
COMPOSER_PROCESS_TIMEOUT=600 composer install
php vendor/bin/phpunit
