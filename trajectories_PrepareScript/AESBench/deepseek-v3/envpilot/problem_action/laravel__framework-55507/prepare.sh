ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update
apt-get install -y liblz4-dev liblzf-dev libzstd-dev php php-dom php-curl php-libxml php-mbstring php-zip php-pcntl php-pdo php-sqlite3 php-pdo-sqlite php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp php-psr
apt-get install -y liblz4-dev liblzf-dev libzstd-dev php php-xml php-curl php-mbstring php-zip php-common php-sqlite3 php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp
php -v
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-curl php8.2-gd php8.2-gmp php8.2-igbinary php8.2-mbstring php8.2-memcached php8.2-msgpack php8.2-opcache php8.2-readline php8.2-redis php8.2-sqlite3 php8.2-xml php8.2-zip
php -v
update-alternatives --set php /usr/bin/php8.2
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer update --prefer-dist --no-interaction --no-progress
php vendor/bin/phpunit --display-deprecation --fail-on-deprecation
open "phpunit.xml.dist"
redis-cli ping
apt-get install -y redis-server && service redis start
redis-server --daemonize yes && redis-cli ping
apt-get install -y mysql-server && service mysql start
service mysql status
php vendor/bin/phpunit --display-deprecation --fail-on-deprecation
open "phpunit.xml.dist"
edit '<!--
        <env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        -->' '<env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />'
ls -la phpunit.xml.dist
chmod 644 phpunit.xml.dist
edit '<!--
        <env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        -->' '<env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />'
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' phpunit.xml.dist
php vendor/bin/phpunit --display-deprecation --fail-on-deprecation
open "phpunit.xml.dist"
edit '<!--
        <env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        -->' '<env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />'
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' phpunit.xml.dist
php vendor/bin/phpunit --display-deprecation --fail-on-deprecation
open "phpunit.xml.dist"
edit '<!--
        <env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        -->' '<env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />'
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' phpunit.xml.dist
php vendor/bin/phpunit --display-deprecation --fail-on-deprecation
open "tests/Testing/Console/ConfigShowCommandTest.php"
edit 'protected function setUp(): void
    {
        parent::setUp();

        putenv('"'"'COLUMNS=64'"'"');
    }' 'protected function setUp(): void
    {
        parent::setUp();

        putenv('"'"'COLUMNS=64'"'"');
    }

    protected function tearDown(): void
    {
        parent::tearDown();

        // Clean up any remaining error handlers
        restore_error_handler();
        restore_exception_handler();
    }'
ls -la tests/Testing/Console/ConfigShowCommandTest.php
chmod 644 tests/Testing/Console/ConfigShowCommandTest.php
edit 'protected function setUp(): void
    {
        parent::setUp();

        putenv('"'"'COLUMNS=64'"'"');
    }' 'protected function setUp(): void
    {
        parent::setUp();

        putenv('"'"'COLUMNS=64'"'"');
    }

    protected function tearDown(): void
    {
        parent::tearDown();

        // Clean up any remaining error handlers
        restore_error_handler();
        restore_exception_handler();
    }'
sed -i '/protected function setUp(): void/a \    protected function tearDown(): void\n    {\n        parent::tearDown();\n\n        // Clean up any remaining error handlers\n        restore_error_handler();\n        restore_exception_handler();\n    }' tests/Testing/Console/ConfigShowCommandTest.php
php vendor/bin/phpunit --display-deprecation --fail-on-deprecation

