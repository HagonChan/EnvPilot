ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y liblz4-dev liblzf-dev libzstd-dev
apt-get install -y php php-dom php-curl php-libxml php-mbstring php-zip php-pcntl php-pdo php-sqlite3 php-pdo-sqlite php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp php-psr php-intl php-fileinfo php-ftp php-pdo-mysql

apt-get install -y php php-xml php-curl php-mbstring php-zip php-pcntl php-pdo php-sqlite3 php-pdo-sqlite php-gd php-redis php-igbinary php-msgpack php-memcached php-gmp php-psr php-intl php-fileinfo php-ftp php-pdo-mysql
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-psr php8.2-intl php8.2-fileinfo php8.2-ftp php8.2-mysql
apt-get install -y php8.2 php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-psr php8.2-intl php8.2-mysql
php -v && php -m
composer update --prefer-dist --no-interaction --no-progress
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer update --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
open "tests/Log/LogManagerTest.php"
search_file 'class LoggerSpy'
goto 769
edit 'public function log($level, \Stringable|string $message, array $context = []): void' 'public function log($level, $message, array $context = []): void'
edit 'public function log($level, \Stringable|string $message, array $context = []): void' 'public function log($level, $message, array $context = []): void'
insert 'public function log($level, $message, array $context = []): void' 775
edit 'public function log($level, \Stringable|string $message, array $context = []): void
    {
        $this->logs[] = [
            '"'"'level'"'"' => $level,
            '"'"'message'"'"' => $message,
            '"'"'context'"'"' => $context,
        ];
    }' 'public function log($level, $message, array $context = []): void
    {
        $this->logs[] = [
            '"'"'level'"'"' => $level,
            '"'"'message'"'"' => $message,
            '"'"'context'"'"' => $context,
        ];
    }'
vendor/bin/phpunit
create LogManagerTest_fixed.php
cat tests/Log/LogManagerTest.php | sed 's/public function log(\$level, \\Stringable|string \$message, array \$context = \[\]): void/public function log(\$level, \$message, array \$context = \[\]): void/' > LogManagerTest_fixed.php
mv LogManagerTest_fixed.php tests/Log/LogManagerTest.php
vendor/bin/phpunit
