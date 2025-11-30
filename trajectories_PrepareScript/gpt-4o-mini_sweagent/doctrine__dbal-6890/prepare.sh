find_file '*.yml' .
open ".github/workflows/continuous-integration.yml"
php -v
apt update && apt install -y php8.4 php8.4-sqlite3 php8.4-pdo-sqlite
apt update && apt install -y php php-sqlite3 php-pdo-sqlite
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update && apt install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt update && apt install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite php8.3-xml
apt update && apt install -y php php-sqlite3 php-pdo-sqlite php-xml
composer install
update-alternatives --display php
update-alternatives --set php /usr/bin/php8.3
ls /usr/bin/php*
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite php8.3-xml
apt update && apt install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite php8.3-xml
php -v
composer install
apt install -y php8.3-curl php8.3-zip
php -m
composer install
vendor/bin/phpunit
apt install -y php8.3-mbstring
php -m
vendor/bin/phpunit
