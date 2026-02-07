ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y tzdata locales
apt-get install -y php8.1 php8.1-json php8.1-msgpack
apt-get install -y php8.1-cli php8.1-msgpack
php -v && php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.1-xml php8.1-dom php8.1-simplexml
composer install
apt-get install -y php8.1-zip unzip
composer install
vendor/bin/phpunit
apt-get install -y php8.1-mbstring
vendor/bin/phpunit
composer update
apt-get install -y php8.2 php8.2-cli php8.2-json php8.2-msgpack php8.2-xml php8.2-dom php8.2-simplexml php8.2-zip php8.2-mbstring
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-cli php8.2-json php8.2-msgpack php8.2-xml php8.2-dom php8.2-simplexml php8.2-zip php8.2-mbstring
apt-get install -y php8.2 php8.2-cli php8.2-msgpack php8.2-xml php8.2-zip php8.2-mbstring
php -v && php -m
update-alternatives --set php /usr/bin/php8.2
vendor/bin/phpunit
