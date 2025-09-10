ls
open "README.md"
open "composer.json"
composer install
apt-get update
apt-get install -y php-cli php-mbstring unzip
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
curl -sS -o composer-setup.php https://getcomposer.org/installer
apt-get install -y wget
wget -O composer-setup.php https://getcomposer.org/installer
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
composer config -g disable-tls true && composer install
composer install --prefer-source
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-pdo-sqlite
php --version
update-alternatives --set php /usr/bin/php8.2
php --version
php -m | grep pdo_sqlite
composer install
composer config -g repos.packagist composer https://packagist.mirrors.silence.dk
composer install
composer install --prefer-source
