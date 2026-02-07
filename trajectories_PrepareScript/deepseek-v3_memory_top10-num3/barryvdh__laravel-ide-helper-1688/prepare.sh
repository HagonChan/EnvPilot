ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "composer.json"
apt-get update && apt-get install -y php8.2-sqlite3 php8.2-fileinfo
apt-get install -y php-sqlite3 php-fileinfo
composer install
apt-get install -y composer
composer install
add-apt-repository ppa:ondrej/php && apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-sqlite3 php8.2-fileinfo
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-sqlite3 php8.2-fileinfo
php -v
update-alternatives --set php /usr/bin/php8.2
php -v
composer install
apt-get install -y php8.2-xml
composer install
apt-get install -y php8.2-intl
composer install
apt-get install -y php8.2-mbstring
composer install
composer test-ci
composer test-ci -- --update-snapshots
composer test-ci -- -d --update-snapshots
open "phpunit.xml.dist"
phpunit -d --update-snapshots
vendor/bin/phpunit -d --update-snapshots
php -m
