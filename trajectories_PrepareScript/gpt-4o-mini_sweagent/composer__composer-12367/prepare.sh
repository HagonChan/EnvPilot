find_file '*.yml' .
open ".github/workflows/continuous-integration.yml"
find_file composer.json
open "/testbed/composer.json"
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update
apt install -y php curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt install -y php-simplexml
composer install
apt install -y php-zip unzip
composer install
composer test

