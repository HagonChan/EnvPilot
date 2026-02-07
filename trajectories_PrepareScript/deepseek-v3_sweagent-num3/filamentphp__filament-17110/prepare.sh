ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
php --version
apt-get update && apt-get install -y php8.1
apt-get install -y php8.2
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3
apt-get install -y php8.3 php8.3-mbstring php8.3-pdo php8.3-sqlite3
php --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.3-intl php8.3-simplexml php8.3-dom php8.3-xml
php -m | grep -E 'intl|simplexml|dom|xml'
composer install
apt-get install -y php8.3-zip php8.3-curl
php -m | grep -E 'zip|curl'
composer install
./vendor/bin/pest
apt-get install -y php8.3-gd
php -m | grep gd
./vendor/bin/pest
