ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
php -v
apt-get update && apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite
php -v
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
composer --version
composer install
apt-get install -y php8.2-intl php8.2-simplexml php8.2-dom php8.2-xml
composer install
apt-get install -y php8.2-zip php8.2-curl
composer install
./vendor/bin/pest
apt-get install -y php8.2-gd
./vendor/bin/pest
