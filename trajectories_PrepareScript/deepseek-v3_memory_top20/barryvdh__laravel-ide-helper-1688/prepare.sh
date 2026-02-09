ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "composer.json"
apt-get update && apt-get install -y php8.2 php8.2-pdo-sqlite php8.2-fileinfo
apt-get install -y php8.3 php8.3-pdo-sqlite php8.3-fileinfo
apt-get install -y php8.4 php8.4-pdo-sqlite php8.4-fileinfo
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-pdo-sqlite php8.2-fileinfo
php -v
php -m | grep -E 'pdo_sqlite|fileinfo'
apt-get install -y composer
composer install
php -m | grep mbstring
phpenmod mbstring
apt-get install --reinstall -y php8.2-mbstring
phpenmod mbstring && php -m | grep mbstring
composer install
apt-get install -y php8.2-intl
phpenmod intl && php -m | grep intl
composer install
unset http_proxy https_proxy && composer install
composer config -g disable-tls true && composer install
apt-get install -y php8.2-curl
phpenmod curl && php -m | grep curl
composer install
apt-get install -y php8.2-xml
phpenmod dom && php -m | grep dom
composer install
composer test-ci
composer test-ci -- --update-snapshots
open "phpunit.xml.dist"
UPDATE_SNAPSHOTS=true composer test-ci
php artisan key:generate
export APP_KEY=base64:$(openssl rand -base64 32) && composer test-ci
UPDATE_SNAPSHOTS=true composer test-ci
open "tests/MethodTest.php"
edit '/**
 * 
 *
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static 
 */' '/**
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static
 */' True
composer test-ci -- --update-snapshots
UPDATE_SNAPSHOTS=true php vendor/bin/phpunit
open "tests/MethodTest.php"
edit '/**
 * 
 *
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static 
 */' '/**
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static
 */' True
composer test-ci -- --update-snapshots
UPDATE_SNAPSHOTS=true php vendor/bin/phpunit
open "tests/MethodTest.php"
edit '/**
 * 
 *
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static 
 */' '/**
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static
 */' True
composer test-ci -- --update-snapshots

