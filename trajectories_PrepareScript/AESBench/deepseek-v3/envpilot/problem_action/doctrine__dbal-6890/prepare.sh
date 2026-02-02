ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php8.3-xml
composer install
edit '"require": {' '"config": {
        "audit": {
            "block-insecure": false
        }
    },
    "require": {'
echo '"config": {"audit": {"block-insecure": false}},' >> composer.json
composer install
sed -i 's/"config": {/"config": {
        "audit": {
            "block-insecure": false
        }
    },
    "require": {/' composer.json
open "composer.json"
edit '"config": {' '"config": {
        "audit": {
            "block-insecure": false
        },
        "sort-packages": true,
        "allow-plugins": {
            "dealerdirect/phpcodesniffer-composer-installer": true,
            "composer/package-versions-deprecated": true
        }
    },'
sed -i '69d' composer.json && sed -i 's/"config": {/"config": {
        "audit": {
            "block-insecure": false
        },
        "sort-packages": true,
        "allow-plugins": {
            "dealerdirect/phpcodesniffer-composer-installer": true,
            "composer/package-versions-deprecated": true
        }
    },/' composer.json
cat > composer.json.tmp << 'EOF'
{
    "name": "doctrine/dbal",
    "type": "library",
    "description": "Powerful PHP database abstraction layer (DBAL) with many features for database schema introspection and management.",
    "keywords": [
        "abstraction",
        "database",
        "dbal",
        "db2",
        "mariadb",
        "mssql",
        "mysql",
        "pgsql",
        "postgresql",
        "oci8",
        "oracle",
        "pdo",
        "queryobject",
        "sasql",
        "sql",
        "sqlite",
        "sqlserver",
        "sqlsrv"
    ],
    "homepage": "https://www.doctrine-project.org/projects/dbal.html",
    "license": "MIT",
    "authors": [
        {"name": "Guilherme Blanco", "email": "guilhermeblanco@gmail.com"},
        {"name": "Roman Borschel", "email": "roman@code-factory.org"},
        {"name": "Benjamin Eberlei", "email": "kontakt@beberlei.de"},
        {"name": "Jonathan Wage", "email": "jonwage@gmail.com"}
    ],
    "require": {
        "php": "^8.3",
        "doctrine/deprecations": "^0.5.3|^1",
        "psr/cache": "^1|^2|^3",
        "psr/log": "^1|^2|^3"
    },
    "require-dev": {
        "doctrine/coding-standard": "12.0.0",
        "fig/log-test": "^1",
        "jetbrains/phpstorm-stubs": "2023.2",
        "phpstan/phpstan": "2.1.1",
        "phpstan/phpstan-phpunit": "2.0.6",
        "phpstan/phpstan-strict-rules": "^2",
        "phpunit/phpunit": "11.5.15",
        "slevomat/coding-standard": "8.13.1",
        "squizlabs/php_codesniffer": "3.10.2",
        "symfony/cache": "^6.3.8|^7.0",
        "symfony/console": "^5.4|^6.3|^7.0"
    },
    "suggest": {
        "symfony/console": "For helpful console commands such as SQL execution and import of files."
    },
    "config": {
        "audit": {
            "block-insecure": false
        },
        "sort-packages": true,
        "allow-plugins": {
            "dealerdirect/phpcodesniffer-composer-installer": true,
            "composer/package-versions-deprecated": true
        }
    },
    "autoload": {
        "psr-4": { "Doctrine\\DBAL\\": "src" }
    },
    "autoload-dev": {
        "psr-4": { "Doctrine\\DBAL\\Tests\\": "tests" }
    }
}
EOF
mv composer.json.tmp composer.json
composer install
composer config process-timeout 2000 && composer install
apt-get install -y zip unzip
composer install
vendor/bin/phpunit -c ci/github/phpunit/phpunit.xml
apt-get install -y php8.3-mbstring php8.3-xml php8.3-dom php8.3-json php8.3-tokenizer php8.3-xmlwriter
apt-get install -y php8.3-mbstring php8.3-xml php8.3-common
vendor/bin/phpunit -c ci/github/phpunit/phpunit.xml
find . -name "phpunit*.xml"
find . -name "phpunit.xml.dist"
vendor/bin/phpunit -c phpunit.xml.dist
