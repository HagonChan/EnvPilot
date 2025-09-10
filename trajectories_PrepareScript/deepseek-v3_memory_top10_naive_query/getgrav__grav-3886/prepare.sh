ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "composer.json"
apt-get update && apt-get install -y git zip php php-opcache php-gd php-curl php-zip php-dom php-libxml php-mbstring
php -v && php -m
apt-get install -y php7.4 php7.4-opcache php7.4-gd php7.4-curl php7.4-zip php7.4-xml php7.4-mbstring
apt-get install -y php8.1 php8.1-opcache php8.1-gd php8.1-curl php8.1-zip php8.1-xml php8.1-mbstring
php -v && php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --prefer-dist --no-progress
composer config process-timeout 2000 && composer install --prefer-dist --no-progress
vendor/bin/codecept run
