ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "composer.json"
apt-get update && apt-get install -y php8.2 php8.2-pdo-sqlite php8.2-json php8.2-fileinfo
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-pdo-sqlite php8.2-json php8.2-fileinfo
apt-get install -y php8.2 php8.2-cli php8.2-sqlite3 php8.2-common
php -v && php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version && composer install
apt-get install -y php8.2-xml
composer install
COMPOSER_PROCESS_TIMEOUT=600 composer install
apt-get install -y zip unzip
git config --global http.postBuffer 524288000 && git config --global core.compression 0 && COMPOSER_PROCESS_TIMEOUT=600 composer install
composer test-ci
apt-get install -y php8.2-mbstring
php -m && composer test-ci
composer test-ci -- -d --update-snapshots
composer test-ci -- -d --stop-on-failure
