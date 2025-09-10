ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
apt-get update && apt-get install -y pdo_sqlite fileinfo
apt-get install -y php8.2 php8.2-sqlite3 php8.2-common
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-sqlite3 php8.2-common
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-sqlite3 php8.2-common
php -v && php -m | grep -E 'pdo_sqlite|fileinfo'
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version && composer install
composer self-update && composer install
composer config -g repo.packagist composer https://packagist.org && composer install
apt-get install -y php8.2-curl && composer install
apt-get install -y php8.2-xml && composer install
apt-get install -y zip unzip && composer install
composer test-ci
apt-get install -y php8.2-mbstring && composer test-ci
open "composer.json"
composer show
composer test-ci --verbose
curl -s https://api.github.com/repos/barryvdh/laravel-ide-helper/issues | grep -i 'docblock' || echo 'No relevant issues found.'
composer test-regenerate
composer fix-style
