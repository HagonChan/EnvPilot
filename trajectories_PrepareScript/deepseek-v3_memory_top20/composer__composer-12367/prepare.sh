ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y php php-intl php-zip composer
composer install
apt-get install -y php8.1-xml
composer install
composer test
apt-get install -y php8.1-curl
composer test
open "composer.json"
edit '"name": "composer/composer",' '"name": "composer/composer",
    "version": "2.8.999-dev",'
cp composer.json composer.json.bak && jq '. + {version: "2.8.999-dev"}' composer.json.bak > composer.json
apt-get install -y jq
cp composer.json composer.json.bak && jq '. + {version: "2.8.999-dev"}' composer.json.bak > composer.json
composer test
mv composer.json.bak composer.json
composer config version 2.8.999-dev
open "composer.json"
mv composer.json.bak composer.json
open "composer.json"
create composer.json
insert '{
    "name": "composer/composer",
    "description": "Dependency Manager for PHP",
    "type": "library",
    "license": "MIT",
    "require": {
        "php": "^7.2.5 || ^8.0",
        "ext-json": "*",
        "ext-phar": "*",
        "ext-zip": "*",
        "ext-zlib": "*",
        "psr/log": "^1.0 || ^2.0 || ^3.0",
        "symfony/console": "^4.4 || ^5.0 || ^6.0",
        "symfony/filesystem": "^4.4 || ^5.0 || ^6.0",
        "symfony/finder": "^4.4 || ^5.0 || ^6.0",
        "symfony/process": "^4.4 || ^5.0 || ^6.0"
    },
    "require-dev": {
        "phpstan/phpstan": "^1.4",
        "phpstan/phpstan-symfony": "^1.2",
        "symfony/phpunit-bridge": "^5.4 || ^6.0"
    },
    "scripts": {
        "test": "@php simple-phpunit"
    },
    "version": "2.8.999-dev"
}'
composer install
composer update
composer test
composer dump-autoload
composer test
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
composer install
composer test
composer --version
composer self-update
curl -sS https://getcomposer.org/installer | php -- --version=2.9.2 && mv composer.phar /usr/local/bin/composer
rm -rf vendor && composer install
composer test
open "tests/bootstrap.php"
open "src/bootstrap.php"
composer dump-autoload --optimize
composer test
ls -la src/Composer/Util/
edit 'require __DIR__.'"'"'/../src/bootstrap.php'"'"';' 'require __DIR__.'"'"'/../src/bootstrap.php'"'"';
require __DIR__.'"'"'/../src/Composer/Util/Platform.php'"'"';'
cp tests/bootstrap.php tests/bootstrap.php.bak && sed -i "s|require __DIR__.'/../src/bootstrap.php';|require __DIR__.'/../src/bootstrap.php';\nrequire __DIR__.'/../src/Composer/Util/Platform.php';|g" tests/bootstrap.php
composer test
ls -la tests/Composer/Test/

