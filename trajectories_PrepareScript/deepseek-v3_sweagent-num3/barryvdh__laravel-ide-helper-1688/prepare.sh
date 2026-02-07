ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "composer.json"
composer install --prefer-dist --no-progress
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get update && apt-get install -y curl php-cli
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --prefer-dist --no-progress
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-pdo-sqlite
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-pdo-sqlite
php --version
update-alternatives --set php /usr/bin/php8.2
php --version
composer install --prefer-dist --no-progress
apt-get install -y php8.2-xml
composer install --prefer-dist --no-progress
apt-get install -y zip unzip
composer install --prefer-dist --no-progress
composer test-ci
apt-get install -y php8.2-mbstring
composer test-ci
composer test-ci -- --update-snapshots
vendor/bin/phpunit --update-snapshots
vendor/bin/phpunit -d
vendor/bin/phpunit -d --update-snapshots
