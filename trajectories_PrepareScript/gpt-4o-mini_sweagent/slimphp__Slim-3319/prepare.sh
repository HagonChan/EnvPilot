
find_file '*.yml'
open "/testbed/.github/workflows/tests.yml"
find_file composer.json
open "/testbed/composer.json"
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update
apt install -y curl php
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt install -y php8.1-xml
composer install
apt install -y php8.1-mbstring
composer install
apt install -y php8.1-zip unzip
composer install
composer test
