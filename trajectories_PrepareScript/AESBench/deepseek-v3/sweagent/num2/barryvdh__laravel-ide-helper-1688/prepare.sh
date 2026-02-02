ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "composer.json"
composer install --prefer-dist --no-progress
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
apt-get update && apt-get install -y php8.2 php8.2-json php8.2-pdo-sqlite php8.2-fileinfo
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update && apt-get install -y php8.2 php8.2-json php8.2-pdo-sqlite php8.2-fileinfo
apt-get install -y php8.2 php8.2-sqlite3 php8.2-common
php -v
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --prefer-dist --no-progress
apt-get install -y php8.2-xml
composer install --prefer-dist --no-progress
apt-get install -y php8.2-zip unzip
composer install --prefer-dist --no-progress
composer test-ci
apt-get install -y php8.2-mbstring
composer test-ci
composer test-ci -- --update-snapshots
php vendor/bin/phpunit --update-snapshots
php vendor/bin/phpunit -d --update-snapshots
php artisan key:generate
ls -la | grep .env
php -r "echo 'APP_KEY=' . base64_encode(random_bytes(32)) . '\n';" > .env
composer test-ci
php vendor/bin/phpunit -d --update-snapshots
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci
composer test-ci

