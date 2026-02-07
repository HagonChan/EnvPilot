ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "composer.json"
apt-get update && apt-get install -y php8.2-sqlite3 php8.2-fileinfo
php -v
apt-get install -y php8.2 php8.2-sqlite3 php8.2-fileinfo
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-sqlite3 php8.2-fileinfo
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.2-xml
composer install
apt-get install -y php8.2-zip unzip
composer install
composer test-ci
apt-get install -y php8.2-mbstring
composer test-ci
composer test-ci -- -d --update-snapshots
