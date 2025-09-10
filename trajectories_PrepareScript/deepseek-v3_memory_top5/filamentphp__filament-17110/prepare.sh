ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.1 php8.1-mbstring php8.1-pdo php8.1-sqlite3
php -v && php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
open "composer.json"
apt-get install -y php8.1-intl php8.1-simplexml php8.1-dom php8.1-xml
php -m
composer install
apt-get install -y php8.2 php8.2-intl php8.2-simplexml php8.2-dom php8.2-xml php8.2-mbstring php8.2-pdo php8.2-sqlite3
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-intl php8.2-simplexml php8.2-dom php8.2-xml php8.2-mbstring php8.2-pdo php8.2-sqlite3
php -v && php -m
composer install
apt-get install -y php8.2-zip php8.2-curl
php -m
composer install
./vendor/bin/pest
apt-get install -y php8.2-gd
php -m
./vendor/bin/pest
