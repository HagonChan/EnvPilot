ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "composer.json"
open "README.md"
open "phpunit.xml.dist"
apt-get update
apt-get install -y php7.4 php7.4-tokenizer php7.4-json php7.4-ctype
apt-get install -y php-tokenizer php-json php-ctype
curl -sS https://getcomposer.org/installer | php
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php
php composer.phar install
apt-get install -y php-mbstring
php composer.phar install
php composer.phar install --ignore-platform-reqs
php composer.phar install --no-dev
php composer.phar global require phpunit/phpunit
apt-get install -y unzip
php composer.phar global require phpunit/phpunit
phpunit --version
composer global config bin-dir --absolute
php /root/.composer/composer.phar global config bin-dir --absolute
ls -la
php composer.phar global config bin-dir --absolute
export PATH=$PATH:/root/.composer/vendor/bin
phpunit --version
phpunit --configuration phpunit.xml.dist
php composer.phar dump-autoload
phpunit --configuration phpunit.xml.dist
open "composer.json"
cat composer.json
edit '"autoload-dev": {
        "psr-4": {
            "PhpParser\\": "test/PhpParser/"
        }
    }' '"autoload": {
        "psr-4": {
            "PhpParser\\": "lib/PhpParser",
            "PhpParser\\": "test/PhpParser/"
        }
    },
    "autoload-dev": {
        "psr-4": {
            "PhpParser\\": "test/PhpParser/"
        }
    }'
create custom_autoload.php
insert '<?php
spl_autoload_register(function ($class) {
    $prefix = '"'"'PhpParser\\'"'"';
    $base_dir = __DIR__ . '"'"'/test/PhpParser/'"'"';

    $len = strlen($prefix);
    if (strncmp($prefix, $class, $len) !== 0) {
        return;
    }

    $relative_class = substr($class, $len);
    $file = $base_dir . str_replace('"'"'\\'"'"', '"'"'/'"'"', $relative_class) . '"'"'.php'"'"';

    if (file_exists($file)) {
        require $file;
    }
});

require __DIR__ . '"'"'/vendor/autoload.php'"'"';' 0
open "phpunit.xml.dist"
cat phpunit.xml.dist
open "./test/bootstrap.php"
cat ./test/bootstrap.php
create temp_bootstrap.php
insert '<?php
require __DIR__ . '"'"'/vendor/autoload.php'"'"';
require __DIR__ . '"'"'/custom_autoload.php'"'"';' 0
phpunit --configuration phpunit.xml.dist --bootstrap temp_bootstrap.php
edit '<?php
require __DIR__ . '"'"'/vendor/autoload.php'"'"';
require __DIR__ . '"'"'/custom_autoload.php'"'"';' '<?php
require __DIR__ . '"'"'/vendor/autoload.php'"'"';
require __DIR__ . '"'"'/custom_autoload.php'"'"';
require __DIR__ . '"'"'/test/bootstrap.php'"'"';'
create temp_bootstrap_v2.php
insert '<?php
require __DIR__ . '"'"'/vendor/autoload.php'"'"';
require __DIR__ . '"'"'/custom_autoload.php'"'"';
require __DIR__ . '"'"'/test/bootstrap.php'"'"';' 0
phpunit --configuration phpunit.xml.dist --bootstrap temp_bootstrap_v2.php
