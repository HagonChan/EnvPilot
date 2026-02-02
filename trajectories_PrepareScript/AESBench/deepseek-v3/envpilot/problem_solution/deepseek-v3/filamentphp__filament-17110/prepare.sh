ls -la
open "composer.json"
find_file '*.yml' .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.1-mbstring php8.1-pdo php8.1-sqlite3
php -v && composer install --prefer-dist --no-interaction
apt-get install -y php8.1
php -v && composer install --prefer-dist --no-interaction
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
composer --version && composer install --prefer-dist --no-interaction
apt-get install -y php8.1-intl php8.1-simplexml php8.1-dom php8.1-xml php8.1-curl
composer install --prefer-dist --no-interaction
apt-get install -y php8.2 php8.2-common php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-intl php8.2-simplexml php8.2-dom php8.2-xml php8.2-curl
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-common php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-intl php8.2-simplexml php8.2-dom php8.2-xml php8.2-curl
php -v && composer install --prefer-dist --no-interaction
apt-get install -y php8.2-zip
php -m && composer install --prefer-dist --no-interaction
./vendor/bin/pest
apt-get install -y php8.2-gd
./vendor/bin/pest
