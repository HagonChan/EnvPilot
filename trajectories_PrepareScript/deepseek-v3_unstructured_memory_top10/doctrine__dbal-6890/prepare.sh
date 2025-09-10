ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
composer install
apt-get update && apt-get install -y composer
composer install
apt-cache search php8.3
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-simplexml
php -v
update-alternatives --set php /usr/bin/php8.3
php -v
composer install
composer clear-cache
composer install
composer require symfony/string
php -m
apt-get install -y php8.3-intl
php -m | grep intl
composer install
apt-get install -y php8.3-mbstring
php -m | grep mbstring
composer install
vendor/bin/phpunit
