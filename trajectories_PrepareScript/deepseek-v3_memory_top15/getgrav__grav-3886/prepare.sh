ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "composer.json"
open "README.md"
apt-get update && apt-get install -y php7.3 php7.3-opcache php7.3-gd php7.3-zip php7.3-curl php7.3-dom php7.3-mbstring
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.3 php7.3-opcache php7.3-gd php7.3-zip php7.3-curl php7.3-dom php7.3-mbstring
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --prefer-dist --no-progress
vendor/bin/codecept run
