ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
php -v
apt-get update && apt-get install -y php7.4 php7.4-xml php7.4-json php7.4-xdebug
apt-get update && apt-get install -y php7.4 php7.4-xml php7.4-json php7.4-xdebug
apt-get install -y php8.0 php8.0-xml php8.0-json php8.0-xdebug
apt-cache search php | grep -E '^php[0-9]+\.'
apt-get install -y php8.1 php8.1-xml php8.1-json php8.1-xdebug
apt-get install -y php8.1 php8.1-cli php8.1-xml php8.1-xdebug
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
composer config -g -- disable-tls true && composer install
composer require slim/slim
composer install --ignore-platform-reqs
apt-get install -y zip unzip
composer install --ignore-platform-reqs
vendor/bin/phpunit
apt-get install -y php8.1-mbstring php8.1-dom php8.1-json php8.1-tokenizer php8.1-xml php8.1-xmlwriter
apt-get install -y php8.1-mbstring php8.1-xml php8.1-common
php -m
vendor/bin/phpunit
XDEBUG_MODE=coverage vendor/bin/phpunit --verbose
open "tests/Mocks/SlowPokeStream.php"
edit 'public function close()
    {' 'public function close(): void
    {'
ls -la tests/Mocks/SlowPokeStream.php
chmod 644 tests/Mocks/SlowPokeStream.php
edit 'public function close()
    {' 'public function close(): void
    {'
insert 'public function close(): void
    {' 46
edit '    public function close()
    {
    }' ''
sed -i '48,50d' tests/Mocks/SlowPokeStream.php
open "tests/Mocks/SlowPokeStream.php"
sed -i '46s/public function close(): void/public function close(): void/' tests/Mocks/SlowPokeStream.php
sed -i '46s/public function close(): void/    public function close(): void/' tests/Mocks/SlowPokeStream.php && sed -i '47d' tests/Mocks/SlowPokeStream.php
open "tests/Mocks/SlowPokeStream.php"
insert '    }' 47
vendor/bin/phpunit
XDEBUG_MODE=coverage vendor/bin/phpunit --verbose
open "tests/Mocks/SmallChunksStream.php"
edit 'public function close()
    {' 'public function close(): void
    {'
chmod 644 tests/Mocks/SmallChunksStream.php
sed -i '41s/public function close()/public function close(): void/' tests/Mocks/SmallChunksStream.php
open "tests/Mocks/SmallChunksStream.php"
vendor/bin/phpunit

