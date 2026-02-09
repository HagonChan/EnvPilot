ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php php-dom php-curl php-libxml php-mbstring php-zip php-pcntl php-pdo php-sqlite3 php-pdo-sqlite php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp php-psr liblz4-dev liblzf-dev libzstd-dev
apt-get install -y php php-dom php-curl php-libxml php-mbstring php-zip php-pcntl php-pdo php-sqlite3 php-pdo-sqlite php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp php-psr liblz4-dev liblzf-dev libzstd-dev
apt-get install -y php8.1 php8.1-xml php8.1-curl php8.1-mbstring php8.1-zip php8.1-sqlite3 php8.1-gd php8.1-redis php8.1-igbinary php8.1-msgpack php8.1-memcached php8.1-gmp php8.1-psr liblz4-dev liblzf-dev libzstd-dev
php -v && composer --version
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
composer --version
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2 php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-psr
add-apt-repository ppa:ondrej/php && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-psr liblz4-dev liblzf-dev libzstd-dev
php -v
composer update --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
apt-get install -y php8.2-mysql
service php8.2-fpm restart && vendor/bin/phpunit
vendor/bin/phpunit
open "composer.json"
composer require psr/log:^3.0 --update-with-dependencies
vendor/bin/phpunit
open "tests/Log/LogManagerTest.php"
edit 'public function log($level, Stringable|string $message, array $context = []): void' 'public function log($level, $message, array $context = []): void' False
search_file 'class LoggerSpy' tests/Log/LogManagerTest.php
goto 769
edit 'public function log($level, \Stringable|string $message, array $context = []): void' 'public function log($level, $message, array $context = []): void' False
insert 'public function log($level, $message, array $context = []): void' 775
edit 'public function log($level, \Stringable|string $message, array $context = []): void' '' False
insert '' 776
sed -i '776d' tests/Log/LogManagerTest.php && vendor/bin/phpunit
open "composer.json"
composer require monolog/monolog:^3.0 --update-with-dependencies
composer require psr/log:3.0.0 --update-with-dependencies
vendor/bin/phpunit
composer require monolog/monolog:^2.0 --update-with-dependencies
vendor/bin/phpunit
open "tests/Log/ContextTest.php"
search_file 'class MyAddContextProcessor' tests/Log/ContextTest.php
goto 660
edit 'public function __invoke(LogRecord $record): LogRecord' 'public function __invoke(array $record): array' False
insert 'public function __invoke(array $record): array' 670
edit 'public function __invoke(LogRecord $record): LogRecord' '' False
sed -i '671d' tests/Log/ContextTest.php && vendor/bin/phpunit
composer require psr/log:3.0.0 monolog/monolog:^2.0 --update-with-dependencies

