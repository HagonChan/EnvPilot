ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y liblz4-dev liblzf-dev libzstd-dev php php-dom php-curl php-libxml php-mbstring php-zip php-pcntl php-pdo php-sqlite3 php-pdo-sqlite php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp php-psr
apt-get install -y php8.2 php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
apt-cache search php8.2 | grep -E 'libxml|pcntl'
apt-get install -y php8.2 php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php -v && php -m
apt-get install -y liblz4-dev liblzf-dev libzstd-dev
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer update --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
service mysql status && service redis-server status && service memcached status
apt-get install -y mysql-server redis-server memcached && service mysql start && service redis-server start && service memcached start
vendor/bin/phpunit
find_file .env
open "/testbed/tests/Foundation/fixtures/.env"
open "/testbed/phpunit.xml.dist"
edit '<!--
        <env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        -->' '<env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        <env name="DB_DATABASE" value="laravel_testing" />
        <env name="DB_USERNAME" value="root" />
        <env name="DB_PASSWORD" value="" />'
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' /testbed/phpunit.xml.dist && echo '<env name="DB_DATABASE" value="laravel_testing" />' >> /testbed/phpunit.xml.dist && echo '<env name="DB_USERNAME" value="root" />' >> /testbed/phpunit.xml.dist && echo '<env name="DB_PASSWORD" value="" />' >> /testbed/phpunit.xml.dist
open "/testbed/phpunit.xml.dist"
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' /testbed/phpunit.xml.dist && sed -i '/<\/php>/i \        <env name="DB_DATABASE" value="laravel_testing" />\n        <env name="DB_USERNAME" value="root" />\n        <env name="DB_PASSWORD" value="" />' /testbed/phpunit.xml.dist
open "/testbed/phpunit.xml.dist"
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' /testbed/phpunit.xml.dist && sed -i '30,32d' /testbed/phpunit.xml.dist
open "/testbed/phpunit.xml.dist"
edit '<!--
        <env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />
        -->' '<env name="REDIS_CLIENT" value="phpredis" />
        <env name="REDIS_HOST" value="127.0.0.1" />
        <env name="REDIS_PORT" value="6379" />'
sed -i 's/<!--\(.*REDIS.*\)-->/\1/g' /testbed/phpunit.xml.dist
open "/testbed/phpunit.xml.dist"
sed -i '20,24d' /testbed/phpunit.xml.dist && sed -i '20i \        <env name="REDIS_CLIENT" value="phpredis" />\n        <env name="REDIS_HOST" value="127.0.0.1" />\n        <env name="REDIS_PORT" value="6379" />' /testbed/phpunit.xml.dist
open "/testbed/phpunit.xml.dist"
vendor/bin/phpunit
tail -n 50 /testbed/tests/Testing/Console/ConfigShowCommandTest.php
grep -r "DynamoDB" /testbed/tests/
open "/testbed/tests/bootstrap.php"
find_file TestCase.php /testbed/tests
open "/testbed/tests/Integration/Generators/TestCase.php"
find /testbed/vendor -name "TestCase.php" | grep -i "testbench"
open "/testbed/vendor/orchestra/testbench-core/src/TestCase.php"
vendor/bin/phpunit --verbose
vendor/bin/phpunit --debug
grep -r "Error" /testbed/tests/
vendor/bin/phpunit --stop-on-error
apt-get install -y php8.2-mysql
php -r "echo defined('PDO::MYSQL_ATTR_SSL_CA') ? 'Yes' : 'No'; echo PHP_EOL;"
vendor/bin/phpunit

