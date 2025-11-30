find_file '*.yml' .
open ".github/workflows/tests.yml"
find_file composer.json .
open "composer.json"
apt-get update
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y php curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php-curl
composer install
apt-get install -y php-xml
composer install
apt-get install -y php-zip unzip
composer install
vendor/bin/phpunit
apt-get install -y php-mbstring
vendor/bin/phpunit
open "composer.json"
edit '"phpstan/phpstan": "^1.11.2"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
create composer_updated.json
insert '{
    "name": "nesbot/carbon",
    "description": "An API extension for DateTime that supports 281 different languages.",
    "license": "MIT",
    "type": "library",
    "keywords": [
        "date",
        "time",
        "DateTime"
    ],
    "authors": [
        {
            "name": "Brian Nesbitt",
            "email": "brian@nesbot.com",
            "homepage": "https://markido.com"
        },
        {
            "name": "kylekatarnls",
            "homepage": "https://github.com/kylekatarnls"
        }
    ],
    "homepage": "https://carbon.nesbot.com",
    "support": {
        "issues": "https://github.com/CarbonPHP/carbon/issues",
        "source": "https://github.com/CarbonPHP/carbon",
        "docs": "https://carbon.nesbot.com/docs"
    },
    "funding": [
        {
            "url": "https://github.com/sponsors/kylekatarnls",
            "type": "github"
        },
        {
            "url": "https://tidelift.com/subscription/pkg/packagist-nesbot-carbon?utm_source=packagist-nesbot-carbon&utm_medium=referral&utm_campaign=readme",
            "type": "tidelift"
        },
        {
            "url": "https://opencollective.com/Carbon#sponsor",
            "type": "opencollective"
        }
    ],
    "require": {
        "php": "^8.1",
        "ext-json": "*",
        "carbonphp/carbon-doctrine-types": "<100.0",
        "psr/clock": "^1.0",
        "symfony/clock": "^6.3 || ^7.0",
        "symfony/polyfill-mbstring": "^1.0",
        "symfony/translation": "^4.4.18 || ^5.2.1|| ^6.0 || ^7.0"
    },
    "require-dev": {
        "doctrine/dbal": "^3.6.3 || ^4.0",
        "doctrine/orm": "^2.15.2 || ^3.0",
        "friendsofphp/php-cs-fixer": "^3.57.2",
        "kylekatarnls/multi-tester": "^2.5.3",
        "ondrejmirtes/better-reflection": "^6.25.0.4",
        "phpmd/phpmd": "^2.15.0",
        "phpstan/extension-installer": "^1.3.1",
        "phpstan/phpstan": "^1.12",
        "phpunit/phpunit": "^10.5.20",
        "squizlabs/php_codesniffer": "^3.9.0"
    },
    "provide": {
        "psr/clock-implementation": "1.0"
    },
    "minimum-stability": "dev",
    "prefer-stable": true,
    "autoload": {
        "psr-4": {
            "Carbon\\": "src/Carbon/"
        }
    },
    "autoload-dev": {
        "psr-4": {
            "Tests\\": "tests/"
        },
        "files": [
            "tests/Laravel/ServiceProvider.php"
        ]
    },
    "bin": [
        "bin/carbon"
    ],
    "config": {
        "allow-plugins": {
            "phpstan/extension-installer": true,
            "composer/package-versions-deprecated": true
        },
        "process-timeout": 0,
        "sort-packages": true
    },
    "extra": {
        "branch-alias": {
            "dev-master": "3.x-dev",
            "dev-2.x": "2.x-dev"
        },
        "laravel": {
            "providers": [
                "Carbon\\Laravel\\ServiceProvider"
            ]
        }
    }
} 
' 0
mv composer_updated.json composer.json
composer install
vendor/bin/phpunit
edit '"phpstan/phpstan": "^1.12"' '"phpstan/phpstan": "^1.13"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.12"' '"phpstan/phpstan": "^1.13"' False
create composer_updated.json
insert '{
    "name": "nesbot/carbon",
    "description": "An API extension for DateTime that supports 281 different languages.",
    "license": "MIT",
    "type": "library",
    "keywords": [
        "date",
        "time",
        "DateTime"
    ],
    "authors": [
        {
            "name": "Brian Nesbitt",
            "email": "brian@nesbot.com",
            "homepage": "https://markido.com"
        },
        {
            "name": "kylekatarnls",
            "homepage": "https://github.com/kylekatarnls"
        }
    ],
    "homepage": "https://carbon.nesbot.com",
    "support": {
        "issues": "https://github.com/CarbonPHP/carbon/issues",
        "source": "https://github.com/CarbonPHP/carbon",
        "docs": "https://carbon.nesbot.com/docs"
    },
    "funding": [
        {
            "url": "https://github.com/sponsors/kylekatarnls",
            "type": "github"
        },
        {
            "url": "https://tidelift.com/subscription/pkg/packagist-nesbot-carbon?utm_source=packagist-nesbot-carbon&utm_medium=referral&utm_campaign=readme",
            "type": "tidelift"
        },
        {
            "url": "https://opencollective.com/Carbon#sponsor",
            "type": "opencollective"
        }
    ],
    "require": {
        "php": "^8.1",
        "ext-json": "*",
        "carbonphp/carbon-doctrine-types": "<100.0",
        "psr/clock": "^1.0",
        "symfony/clock": "^6.3 || ^7.0",
        "symfony/polyfill-mbstring": "^1.0",
        "symfony/translation": "^4.4.18 || ^5.2.1|| ^6.0 || ^7.0"
    },
    "require-dev": {
        "doctrine/dbal": "^3.6.3 || ^4.0",
        "doctrine/orm": "^2.15.2 || ^3.0",
        "friendsofphp/php-cs-fixer": "^3.57.2",
        "kylekatarnls/multi-tester": "^2.5.3",
        "ondrejmirtes/better-reflection": "^6.25.0.4",
        "phpmd/phpmd": "^2.15.0",
        "phpstan/extension-installer": "^1.3.1",
        "phpstan/phpstan": "^1.13",
        "phpunit/phpunit": "^10.5.20",
        "squizlabs/php_codesniffer": "^3.9.0"
    },
    "provide": {
        "psr/clock-implementation": "1.0"
    },
    "minimum-stability": "dev",
    "prefer-stable": true,
    "autoload": {
        "psr-4": {
            "Carbon\\": "src/Carbon/"
        }
    },
    "autoload-dev": {
        "psr-4": {
            "Tests\\": "tests/"
        },
        "files": [
            "tests/Laravel/ServiceProvider.php"
        ]
    },
    "bin": [
        "bin/carbon"
    ],
    "config": {
        "allow-plugins": {
            "phpstan/extension-installer": true,
            "composer/package-versions-deprecated": true
        },
        "process-timeout": 0,
        "sort-packages": true
    },
    "extra": {
        "branch-alias": {
            "dev-master": "3.x-dev",
            "dev-2.x": "2.x-dev"
        },
        "laravel": {
            "providers": [
                "Carbon\\Laravel\\ServiceProvider"
            ]
        }
    }
} 
' 0
mv composer_updated.json composer.json
composer install
composer update
composer update --with-all-dependencies
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False
open "composer.json"
edit '"phpstan/phpstan": "^1.13"' '"phpstan/phpstan": "^1.12"' False

