ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php7.4 php7.4-cli php7.4-xml composer
php -v
composer install
apt-get remove -y composer && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.18
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.18
composer install
ls -la /usr/local/bin/composer && export PATH=$PATH:/usr/local/bin
composer install
apt-get install -y php7.4-mbstring
composer install
./vendor/bin/phpunit
