find_file '*.yml' .
open ".github/workflows/tests.yml"
find_file composer.json .
open "composer.json"
apt update
apt install -y php8.2 php8.2-ctype php8.2-mbstring php8.2-openssl php8.2-tokenizer php8.2-curl php8.2-zip php8.2-pdo php8.2-sqlite3 php8.2-gd
apt search php | grep php
add-apt-repository ppa:ondrej/php -y
echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu jammy main" | tee /etc/apt/sources.list.d/ondrej-php.list
apt update
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 71DAEAAB4AD4CAB6 4F4EA0AAE5267A6C
apt install -y php8.1 php8.1-ctype php8.1-mbstring php8.1-openssl php8.1-tokenizer php8.1-curl php8.1-zip php8.1-pdo php8.1-sqlite3 php8.1-gd
apt search php8.1 | grep php8.1
apt install -y php8.1 php8.1-common php8.1-mbstring php8.1-curl php8.1-zip php8.1-pdo php8.1-sqlite3 php8.1-gd
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer install
composer install --ignore-platform-reqs
vendor/bin/phpunit
search_file phpunit composer.json
edit '"phpunit/phpunit": "^10.5.35|^11.5.3|^12.0.1"' '"phpunit/phpunit": "^9.5"' True
open "composer.json"
edit '"phpunit/phpunit": "^10.5.35|^11.5.3|^12.0.1"' '"phpunit/phpunit": "^9.5"' True
create composer.json
insert '{
    "name": "laravel/framework",
    "description": "The Laravel Framework.",
    "keywords": ["framework", "laravel"],
    "license": "MIT",
    "homepage": "https://laravel.com",
    "support": {
        "issues": "https://github.com/laravel/framework/issues",
        "source": "https://github.com/laravel/framework"
    },
    "authors": [
        {
            "name": "Taylor Otwell",
            "email": "taylor@laravel.com"
        }
    ],
    "require": {
        "php": "^8.2",
        "ext-ctype": "*",
        "ext-filter": "*",
        "ext-hash": "*",
        "ext-mbstring": "*",
        "ext-openssl": "*",
        "ext-session": "*",
        "ext-tokenizer": "*",
        "composer-runtime-api": "^2.2",
        "brick/math": "^0.11|^0.12",
        "doctrine/inflector": "^2.0.5",
        "dragonmantank/cron-expression": "^3.4",
        "egulias/email-validator": "^3.2.1|^4.0",
        "fruitcake/php-cors": "^1.3",
        "guzzlehttp/guzzle": "^7.8.2",
        "guzzlehttp/uri-template": "^1.0",
        "laravel/prompts": "^0.3.0",
        "laravel/serializable-closure": "^1.3|^2.0",
        "league/commonmark": "^2.6",
        "league/flysystem": "^3.25.1",
        "league/flysystem-local": "^3.25.1",
        "league/uri": "^7.5.1",
        "monolog/monolog": "^3.0",
        "nesbot/carbon": "^3.8.4",
        "nunomaduro/termwind": "^2.0",
        "psr/container": "^1.1.1|^2.0.1",
        "psr/log": "^1.0|^2.0|^3.0",
        "psr/simple-cache": "^1.0|^2.0|^3.0",
        "ramsey/uuid": "^4.7",
        "symfony/console": "^7.2.0",
        "symfony/error-handler": "^7.2.0",
        "symfony/finder": "^7.2.0",
        "symfony/http-foundation": "^7.2.0",
        "symfony/http-kernel": "^7.2.0",
        "symfony/mailer": "^7.2.0",
        "symfony/mime": "^7.2.0",
        "symfony/polyfill-php83": "^1.31",
        "symfony/process": "^7.2.0",
        "symfony/routing": "^7.2.0",
        "symfony/uid": "^7.2.0",
        "symfony/var-dumper": "^7.2.0",
        "tijsverkoyen/css-to-inline-styles": "^2.2.5",
        "vlucas/phpdotenv": "^5.6.1",
        "voku/portable-ascii": "^2.0.2",
        "phpunit/phpunit": "^9.5"
    },
    "replace": {
        "illuminate/auth": "self.version",
        "illuminate/broadcasting": "self.version",
        "illuminate/bus": "self.version",
        "illuminate/cache": "self.version",
        "illuminate/collections": "self.version",
        "illuminate/concurrency": "self.version",
        "illuminate/conditionable": "self.version",
        "illuminate/config": "self.version",
        "illuminate/console": "self.version",
        "illuminate/container": "self.version",
        "illuminate/contracts": "self.version",
        "illuminate/cookie": "self.version",
        "illuminate/database": "self.version",
        "illuminate/encryption": "self.version",
        "illuminate/events": "self.version",
        "illuminate/filesystem": "self.version",
        "illuminate/hashing": "self.version",
        "illuminate/http": "self.version",
        "illuminate/log": "self.version",
        "illuminate/macroable": "self.version",
        "illuminate/mail": "self.version",
        "illuminate/notifications": "self.version",
        "illuminate/pagination": "self.version",
        "illuminate/pipeline": "self.version",
        "illuminate/process": "self.version",
        "illuminate/queue": "self.version",
        "illuminate/redis": "self.version",
        "illuminate/routing": "self.version",
        "illuminate/session": "self.version",
        "illuminate/support": "self.version",
        "illuminate/testing": "self.version",
        "illuminate/translation": "self.version",
        "illuminate/validation": "self.version",
        "illuminate/view": "self.version",
        "spatie/once": "*"
    },
    "require-dev": {
        "phpunit/phpunit": "^9.5"
    }
}'
composer install --ignore-platform-reqs
goto 212
edit '    "prefer-stable": true
}' '    "prefer-stable": true
' True
insert '{
    "name": "laravel/framework",
    "description": "The Laravel Framework.",
    "keywords": ["framework", "laravel"],
    "license": "MIT",
    "homepage": "https://laravel.com",
    "support": {
        "issues": "https://github.com/laravel/framework/issues",
        "source": "https://github.com/laravel/framework"
    },
    "authors": [
        {
            "name": "Taylor Otwell",
            "email": "taylor@laravel.com"
        }
    ],
    "require": {
        "php": "^8.2",
        "ext-ctype": "*",
        "ext-filter": "*",
        "ext-hash": "*",
        "ext-mbstring": "*",
        "ext-openssl": "*",
        "ext-session": "*",
        "ext-tokenizer": "*",
        "composer-runtime-api": "^2.2",
        "brick/math": "^0.11|^0.12",
        "doctrine/inflector": "^2.0.5",
        "dragonmantank/cron-expression": "^3.4",
        "egulias/email-validator": "^3.2.1|^4.0",
        "fruitcake/php-cors": "^1.3",
        "guzzlehttp/guzzle": "^7.8.2",
        "guzzlehttp/uri-template": "^1.0",
        "laravel/prompts": "^0.3.0",
        "laravel/serializable-closure": "^1.3|^2.0",
        "league/commonmark": "^2.6",
        "league/flysystem": "^3.25.1",
        "league/flysystem-local": "^3.25.1",
        "league/uri": "^7.5.1",
        "monolog/monolog": "^3.0",
        "nesbot/carbon": "^3.8.4",
        "nunomaduro/termwind": "^2.0",
        "psr/container": "^1.1.1|^2.0.1",
        "psr/log": "^1.0|^2.0|^3.0",
        "psr/simple-cache": "^1.0|^2.0|^3.0",
        "ramsey/uuid": "^4.7",
        "symfony/console": "^7.2.0",
        "symfony/error-handler": "^7.2.0",
        "symfony/finder": "^7.2.0",
        "symfony/http-foundation": "^7.2.0",
        "symfony/http-kernel": "^7.2.0",
        "symfony/mailer": "^7.2.0",
        "symfony/mime": "^7.2.0",
        "symfony/polyfill-php83": "^1.31",
        "symfony/process": "^7.2.0",
        "symfony/routing": "^7.2.0",
        "symfony/uid": "^7.2.0",
        "symfony/var-dumper": "^7.2.0",
        "tijsverkoyen/css-to-inline-styles": "^2.2.5",
        "vlucas/phpdotenv": "^5.6.1",
        "voku/portable-ascii": "^2.0.2",
        "phpunit/phpunit": "^9.5"
    },
    "replace": {
        "illuminate/auth": "self.version",
        "illuminate/broadcasting": "self.version",
        "illuminate/bus": "self.version",
        "illuminate/cache": "self.version",
        "illuminate/collections": "self.version",
        "illuminate/concurrency": "self.version",
        "illuminate/conditionable": "self.version",
        "illuminate/config": "self.version",
        "illuminate/console": "self.version",
        "illuminate/container": "self.version",
        "illuminate/contracts": "self.version",
        "illuminate/cookie": "self.version",
        "illuminate/database": "self.version",
        "illuminate/encryption": "self.version",
        "illuminate/events": "self.version",
        "illuminate/filesystem": "self.version",
        "illuminate/hashing": "self.version",
        "illuminate/http": "self.version",
        "illuminate/log": "self.version",
        "illuminate/macroable": "self.version",
        "illuminate/mail": "self.version",
        "illuminate/notifications": "self.version",
        "illuminate/pagination": "self.version",
        "illuminate/pipeline": "self.version",
        "illuminate/process": "self.version",
        "illuminate/queue": "self.version",
        "illuminate/redis": "self.version",
        "illuminate/routing": "self.version",
        "illuminate/session": "self.version",
        "illuminate/support": "self.version",
        "illuminate/testing": "self.version",
        "illuminate/translation": "self.version",
        "illuminate/validation": "self.version",
        "illuminate/view": "self.version",
        "spatie/once": "*"
    },
    "require-dev": {
        "phpunit/phpunit": "^9.5"
    }
}'"'"' })  
'
composer install --ignore-platform-reqs
open "composer.json"
insert '{
    "name": "laravel/framework",
    "description": "The Laravel Framework.",
    "keywords": ["framework", "laravel"],
    "license": "MIT",
    "homepage": "https://laravel.com",
    "support": {
        "issues": "https://github.com/laravel/framework/issues",
        "source": "https://github.com/laravel/framework"
    },
    "authors": [
        {
            "name": "Taylor Otwell",
            "email": "taylor@laravel.com"
        }
    ],
    "require": {
        "php": "^8.2",
        "ext-ctype": "*",
        "ext-filter": "*",
        "ext-hash": "*",
        "ext-mbstring": "*",
        "ext-openssl": "*",
        "ext-session": "*",
        "ext-tokenizer": "*",
        "composer-runtime-api": "^2.2",
        "brick/math": "^0.11|^0.12",
        "doctrine/inflector": "^2.0.5",
        "dragonmantank/cron-expression": "^3.4",
        "egulias/email-validator": "^3.2.1|^4.0",
        "fruitcake/php-cors": "^1.3",
        "guzzlehttp/guzzle": "^7.8.2",
        "guzzlehttp/uri-template": "^1.0",
        "laravel/prompts": "^0.3.0",
        "laravel/serializable-closure": "^1.3|^2.0",
        "league/commonmark": "^2.6",
        "league/flysystem": "^3.25.1",
        "league/flysystem-local": "^3.25.1",
        "league/uri": "^7.5.1",
        "monolog/monolog": "^3.0",
        "nesbot/carbon": "^3.8.4",
        "nunomaduro/termwind": "^2.0",
        "psr/container": "^1.1.1|^2.0.1",
        "psr/log": "^1.0|^2.0|^3.0",
        "psr/simple-cache": "^1.0|^2.0|^3.0",
        "ramsey/uuid": "^4.7",
        "symfony/console": "^7.2.0",
        "symfony/error-handler": "^7.2.0",
        "symfony/finder": "^7.2.0",
        "symfony/http-foundation": "^7.2.0",
        "symfony/http-kernel": "^7.2.0",
        "symfony/mailer": "^7.2.0",
        "symfony/mime": "^7.2.0",
        "symfony/polyfill-php83": "^1.31",
        "symfony/process": "^7.2.0",
        "symfony/routing": "^7.2.0",
        "symfony/uid": "^7.2.0",
        "symfony/var-dumper": "^7.2.0",
        "tijsverkoyen/css-to-inline-styles": "^2.2.5",
        "vlucas/phpdotenv": "^5.6.1",
        "voku/portable-ascii": "^2.0.2",
        "phpunit/phpunit": "^9.5"
    },
    "replace": {
        "illuminate/auth": "self.version",
        "illuminate/broadcasting": "self.version",
        "illuminate/bus": "self.version",
        "illuminate/cache": "self.version",
        "illuminate/collections": "self.version",
        "illuminate/concurrency": "self.version",
        "illuminate/conditionable": "self.version",
        "illuminate/config": "self.version",
        "illuminate/console": "self.version",
        "illuminate/container": "self.version",
        "illuminate/contracts": "self.version",
        "illuminate/cookie": "self.version",
        "illuminate/database": "self.version",
        "illuminate/encryption": "self.version",
        "illuminate/events": "self.version",
        "illuminate/filesystem": "self.version",
        "illuminate/hashing": "self.version",
        "illuminate/http": "self.version",
        "illuminate/log": "self.version",
        "illuminate/macroable": "self.version",
        "illuminate/mail": "self.version",
        "illuminate/notifications": "self.version",
        "illuminate/pagination": "self.version",
        "illuminate/pipeline": "self.version",
        "illuminate/process": "self.version",
        "illuminate/queue": "self.version",
        "illuminate/redis": "self.version",
        "illuminate/routing": "self.version",
        "illuminate/session": "self.version",
        "illuminate/support": "self.version",
        "illuminate/testing": "self.version",
        "illuminate/translation": "self.version",
        "illuminate/validation": "self.version",
        "illuminate/view": "self.version",
        "spatie/once": "*"
    },
    "require-dev": {
        "phpunit/phpunit": "^9.5"
    }
}'"'"' })  
'
create composer.json
rm composer.json
insert '{
    "name": "laravel/framework",
    "description": "The Laravel Framework.",
    "keywords": ["framework", "laravel"],
    "license": "MIT",
    "homepage": "https://laravel.com",
    "support": {
        "issues": "https://github.com/laravel/framework/issues",
        "source": "https://github.com/laravel/framework"
    },
    "authors": [
        {
            "name": "Taylor Otwell",
            "email": "taylor@laravel.com"
        }
    ],
    "require": {
        "php": "^8.2",
        "ext-ctype": "*",
        "ext-filter": "*",
        "ext-hash": "*",
        "ext-mbstring": "*",
        "ext-openssl": "*",
        "ext-session": "*",
        "ext-tokenizer": "*",
        "composer-runtime-api": "^2.2",
        "brick/math": "^0.11|^0.12",
        "doctrine/inflector": "^2.0.5",
        "dragonmantank/cron-expression": "^3.4",
        "egulias/email-validator": "^3.2.1|^4.0",
        "fruitcake/php-cors": "^1.3",
        "guzzlehttp/guzzle": "^7.8.2",
        "guzzlehttp/uri-template": "^1.0",
        "laravel/prompts": "^0.3.0",
        "laravel/serializable-closure": "^1.3|^2.0",
        "league/commonmark": "^2.6",
        "league/flysystem": "^3.25.1",
        "league/flysystem-local": "^3.25.1",
        "league/uri": "^7.5.1",
        "monolog/monolog": "^3.0",
        "nesbot/carbon": "^3.8.4",
        "nunomaduro/termwind": "^2.0",
        "psr/container": "^1.1.1|^2.0.1",
        "psr/log": "^1.0|^2.0|^3.0",
        "psr/simple-cache": "^1.0|^2.0|^3.0",
        "ramsey/uuid": "^4.7",
        "symfony/console": "^7.2.0",
        "symfony/error-handler": "^7.2.0",
        "symfony/finder": "^7.2.0",
        "symfony/http-foundation": "^7.2.0",
        "symfony/http-kernel": "^7.2.0",
        "symfony/mailer": "^7.2.0",
        "symfony/mime": "^7.2.0",
        "symfony/polyfill-php83": "^1.31",
        "symfony/process": "^7.2.0",
        "symfony/routing": "^7.2.0",
        "symfony/uid": "^7.2.0",
        "symfony/var-dumper": "^7.2.0",
        "tijsverkoyen/css-to-inline-styles": "^2.2.5",
        "vlucas/phpdotenv": "^5.6.1",
        "voku/portable-ascii": "^2.0.2",
        "phpunit/phpunit": "^9.5"
    },
    "replace": {
        "illuminate/auth": "self.version",
        "illuminate/broadcasting": "self.version",
        "illuminate/bus": "self.version",
        "illuminate/cache": "self.version",
        "illuminate/collections": "self.version",
        "illuminate/concurrency": "self.version",
        "illuminate/conditionable": "self.version",
        "illuminate/config": "self.version",
        "illuminate/console": "self.version",
        "illuminate/container": "self.version",
        "illuminate/contracts": "self.version",
        "illuminate/cookie": "self.version",
        "illuminate/database": "self.version",
        "illuminate/encryption": "self.version",
        "illuminate/events": "self.version",
        "illuminate/filesystem": "self.version",
        "illuminate/hashing": "self.version",
        "illuminate/http": "self.version",
        "illuminate/log": "self.version",
        "illuminate/macroable": "self.version",
        "illuminate/mail": "self.version",
        "illuminate/notifications": "self.version",
        "illuminate/pagination": "self.version",
        "illuminate/pipeline": "self.version",
        "illuminate/process": "self.version",
        "illuminate/queue": "self.version",
        "illuminate/redis": "self.version",
        "illuminate/routing": "self.version",
        "illuminate/session": "self.version",
        "illuminate/support": "self.version",
        "illuminate/testing": "self.version",
        "illuminate/translation": "self.version",
        "illuminate/validation": "self.version",
        "illuminate/view": "self.version",
        "spatie/once": "*"
    },
    "require-dev": {
        "phpunit/phpunit": "^9.5"
    }
}'"'"' })  
'
ls -l
insert '{
    "name": "laravel/framework",
    "description": "The Laravel Framework.",
    "keywords": ["framework", "laravel"],
    "license": "MIT",
    "homepage": "https://laravel.com",
    "support": {
        "issues": "https://github.com/laravel/framework/issues",
        "source": "https://github.com/laravel/framework"
    },
    "authors": [
        {
            "name": "Taylor Otwell",
            "email": "taylor@laravel.com"
        }
    ],
    "require": {
        "php": "^8.2",
        "ext-ctype": "*",
        "ext-filter": "*",
        "ext-hash": "*",
        "ext-mbstring": "*",
        "ext-openssl": "*",
        "ext-session": "*",
        "ext-tokenizer": "*",
        "composer-runtime-api": "^2.2",
        "brick/math": "^0.11|^0.12",
        "doctrine/inflector": "^2.0.5",
        "dragonmantank/cron-expression": "^3.4",
        "egulias/email-validator": "^3.2.1|^4.0",
        "fruitcake/php-cors": "^1.3",
        "guzzlehttp/guzzle": "^7.8.2",
        "guzzlehttp/uri-template": "^1.0",
        "laravel/prompts": "^0.3.0",
        "laravel/serializable-closure": "^1.3|^2.0",
        "league/commonmark": "^2.6",
        "league/flysystem": "^3.25.1",
        "league/flysystem-local": "^3.25.1",
        "league/uri": "^7.5.1",
        "monolog/monolog": "^3.0",
        "nesbot/carbon": "^3.8.4",
        "nunomaduro/termwind": "^2.0",
        "psr/container": "^1.1.1|^2.0.1",
        "psr/log": "^1.0|^2.0|^3.0",
        "psr/simple-cache": "^1.0|^2.0|^3.0",
        "ramsey/uuid": "^4.7",
        "symfony/console": "^7.2.0",
        "symfony/error-handler": "^7.2.0",
        "symfony/finder": "^7.2.0",
        "symfony/http-foundation": "^7.2.0",
        "symfony/http-kernel": "^7.2.0",
        "symfony/mailer": "^7.2.0",
        "symfony/mime": "^7.2.0",
        "symfony/polyfill-php83": "^1.31",
        "symfony/process": "^7.2.0",
        "symfony/routing": "^7.2.0",
        "symfony/uid": "^7.2.0",
        "symfony/var-dumper": "^7.2.0",
        "tijsverkoyen/css-to-inline-styles": "^2.2.5",
        "vlucas/phpdotenv": "^5.6.1",
        "voku/portable-ascii": "^2.0.2",
        "phpunit/phpunit": "^9.5"
    },
    "replace": {
        "illuminate/auth": "self.version",
        "illuminate/broadcasting": "self.version",
        "illuminate/bus": "self.version",
        "illuminate/cache": "self.version",
        "illuminate/collections": "self.version",
        "illuminate/concurrency": "self.version",
        "illuminate/conditionable": "self.version",
        "illuminate/config": "self.version",
        "illuminate/console": "self.version",
        "illuminate/container": "self.version",
        "illuminate/contracts": "self.version",
        "illuminate/cookie": "self.version",
        "illuminate/database": "self.version",
        "illuminate/encryption": "self.version",
        "illuminate/events": "self.version",
        "illuminate/filesystem": "self.version",
        "illuminate/hashing": "self.version",
        "illuminate/http": "self.version",
        "illuminate/log": "self.version",
        "illuminate/macroable": "self.version",
        "illuminate/mail": "self.version",
        "illuminate/notifications": "self.version",
        "illuminate/pagination": "self.version",
        "illuminate/pipeline": "self.version",
        "illuminate/process": "self.version",
        "illuminate/queue": "self.version",
        "illuminate/redis": "self.version",
        "illuminate/routing": "self.version",
        "illuminate/session": "self.version",
        "illuminate/support": "self.version",
        "illuminate/testing": "self.version",
        "illuminate/translation": "self.version",
        "illuminate/validation": "self.version",
        "illuminate/view": "self.version",
        "spatie/once": "*"
    },
    "require-dev": {
        "phpunit/phpunit": "^9.5"
    }
}'"'"' })  
'
create composer.json
insert '{
    "name": "laravel/framework",
    "description": "The Laravel Framework.",
    "keywords": ["framework", "laravel"],
    "license": "MIT",
    "homepage": "https://laravel.com",
    "support": {
        "issues": "https://github.com/laravel/framework/issues",
        "source": "https://github.com/laravel/framework"
    },
    "authors": [
        {
            "name": "Taylor Otwell",
            "email": "taylor@laravel.com"
        }
    ],
    "require": {
        "php": "^8.2",
        "ext-ctype": "*",
        "ext-filter": "*",
        "ext-hash": "*",
        "ext-mbstring": "*",
        "ext-openssl": "*",
        "ext-session": "*",
        "ext-tokenizer": "*",
        "composer-runtime-api": "^2.2",
        "brick/math": "^0.11|^0.12",
        "doctrine/inflector": "^2.0.5",
        "dragonmantank/cron-expression": "^3.4",
        "egulias/email-validator": "^3.2.1|^4.0",
        "fruitcake/php-cors": "^1.3",
        "guzzlehttp/guzzle": "^7.8.2",
        "guzzlehttp/uri-template": "^1.0",
        "laravel/prompts": "^0.3.0",
        "laravel/serializable-closure": "^1.3|^2.0",
        "league/commonmark": "^2.6",
        "league/flysystem": "^3.25.1",
        "league/flysystem-local": "^3.25.1",
        "league/uri": "^7.5.1",
        "monolog/monolog": "^3.0",
        "nesbot/carbon": "^3.8.4",
        "nunomaduro/termwind": "^2.0",
        "psr/container": "^1.1.1|^2.0.1",
        "psr/log": "^1.0|^2.0|^3.0",
        "psr/simple-cache": "^1.0|^2.0|^3.0",
        "ramsey/uuid": "^4.7",
        "symfony/console": "^7.2.0",
        "symfony/error-handler": "^7.2.0",
        "symfony/finder": "^7.2.0",
        "symfony/http-foundation": "^7.2.0",
        "symfony/http-kernel": "^7.2.0",
        "symfony/mailer": "^7.2.0",
        "symfony/mime": "^7.2.0",
        "symfony/polyfill-php83": "^1.31",
        "symfony/process": "^7.2.0",
        "symfony/routing": "^7.2.0",
        "symfony/uid": "^7.2.0",
        "symfony/var-dumper": "^7.2.0",
        "tijsverkoyen/css-to-inline-styles": "^2.2.5",
        "vlucas/phpdotenv": "^5.6.1",
        "voku/portable-ascii": "^2.0.2",
        "phpunit/phpunit": "^9.5"
    },
    "replace": {
        "illuminate/auth": "self.version",
        "illuminate/broadcasting": "self.version",
        "illuminate/bus": "self.version",
        "illuminate/cache": "self.version",
        "illuminate/collections": "self.version",
        "illuminate/concurrency": "self.version",
        "illuminate/conditionable": "self.version",
        "illuminate/config": "self.version",
        "illuminate/console": "self.version",
        "illuminate/container": "self.version",
        "illuminate/contracts": "self.version",
        "illuminate/cookie": "self.version",
        "illuminate/database": "self.version",
        "illuminate/encryption": "self.version",
        "illuminate/events": "self.version",
        "illuminate/filesystem": "self.version",
        "illuminate/hashing": "self.version",
        "illuminate/http": "self.version",
        "illuminate/log": "self.version",
        "illuminate/macroable": "self.version",
        "illuminate/mail": "self.version",
        "illuminate/notifications": "self.version",
        "illuminate/pagination": "self.version",
        "illuminate/pipeline": "self.version",
        "illuminate/process": "self.version",
        "illuminate/queue": "self.version",
        "illuminate/redis": "self.version",
        "illuminate/routing": "self.version",
        "illuminate/session": "self.version",
        "illuminate/support": "self.version",
        "illuminate/testing": "self.version",
        "illuminate/translation": "self.version",
        "illuminate/validation": "self.version",
        "illuminate/view": "self.version",
        "spatie/once": "*"
    },
    "require-dev": {
        "phpunit/phpunit": "^9.5"
    }
}'"'"' })  
'
composer install --ignore-platform-reqs
goto 105
insert '
}'
composer install --ignore-platform-reqs
goto 105
open "composer.json"
insert '
}'
composer install --ignore-platform-reqs
open "composer.json"

