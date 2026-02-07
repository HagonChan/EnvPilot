ls -la
open "composer.json"
find_file '*.yml' .github/workflows
open ".github/workflows/continuous-integration.yml"
apt-get update && apt-get install -y php8.3
apt-cache search php | grep ^php
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-cli php8.3-common php8.3-mbstring php8.3-xml php8.3-zip php8.3-sqlite3 php8.3-pdo php8.3-pdo-sqlite
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
composer config --no-plugins audit.block-insecure false && composer install
php -d memory_limit=-1 /usr/local/bin/composer install
vendor/bin/phpunit
