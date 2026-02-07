ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
php -v
apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-mbstring php8.2-xml php8.2-zip php8.2-curl php8.2-pcntl php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-mbstring php8.2-xml php8.2-zip php8.2-curl php8.2-pcntl php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-mbstring php8.2-xml php8.2-zip php8.2-curl php8.2-pcntl php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php -v
apt-get update && apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-mbstring php8.2-xml php8.2-zip php8.2-curl php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php -v
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
composer --version
composer update --prefer-dist --no-interaction
vendor/bin/phpunit
vendor/bin/phpunit --list-tests
apt-get install -y php8.2-mysql
vendor/bin/phpunit
vendor/bin/phpunit --list-tests
vendor/bin/phpunit --verbose
vendor/bin/phpunit --debug
vendor/bin/phpunit
vendor/bin/phpunit --disallow-test-output
vendor/bin/phpunit tests/Auth/AuthAccessGateTest.php
vendor/bin/phpunit tests/Testing/Console/ConfigShowCommandTest.php
open "tests/Testing/Console/ConfigShowCommandTest.php"
composer show orchestra/testbench
composer require --dev orchestra/testbench
vendor/bin/phpunit tests/Testing/Console/ConfigShowCommandTest.php
curl -s https://raw.githubusercontent.com/orchestral/testbench/main/README.md | grep -A 10 "Getting Started"
edit 'class ConfigShowCommandTest extends TestCase' 'class ConfigShowCommandTest extends TestCase
{
    protected function createApplication()
    {
        $app = require __DIR__.'"'"'/../../../bootstrap/app.php'"'"';
        $app->make(\Illuminate\Contracts\Console\Kernel::class)->bootstrap();
        return $app;
    }'
ls -la tests/Testing/Console/ConfigShowCommandTest.php
chmod +w tests/Testing/Console/ConfigShowCommandTest.php
edit 'class ConfigShowCommandTest extends TestCase' 'class ConfigShowCommandTest extends TestCase
{
    protected function createApplication()
    {
        $app = require __DIR__.'"'"'/../../../bootstrap/app.php'"'"';
        $app->make(\Illuminate\Contracts\Console\Kernel::class)->bootstrap();
        return $app;
    }'
echo -e '\nprotected function createApplication()\n{\n    $app = require __DIR__."/../../../bootstrap/app.php";\n    $app->make(\\Illuminate\\Contracts\\Console\\Kernel::class)->bootstrap();\n    return $app;\n}' >> tests/Testing/Console/ConfigShowCommandTest.php
vendor/bin/phpunit tests/Testing/Console/ConfigShowCommandTest.php
open "tests/Testing/Console/ConfigShowCommandTest.php"
edit 'protected function createApplication()
{
    $app = require __DIR__."/../../../bootstrap/app.php";
    $app->make(\Illuminate\Contracts\Console\Kernel::class)->bootstrap();
    return $app;
}' '    protected function createApplication()
    {
        $app = require __DIR__.'"'"'/../../../bootstrap/app.php'"'"';
        $app->make(\Illuminate\Contracts\Console\Kernel::class)->bootstrap();
        return $app;
    }'
sed -i '77,82d' tests/Testing/Console/ConfigShowCommandTest.php && sed -i '75a \    protected function createApplication()\n    {\n        $app = require __DIR__."/../../../bootstrap/app.php";\n        $app->make(\\Illuminate\\Contracts\\Console\\Kernel::class)->bootstrap();\n        return $app;\n    }' tests/Testing/Console/ConfigShowCommandTest.php
vendor/bin/phpunit tests/Testing/Console/ConfigShowCommandTest.php
open "tests/Testing/Console/ConfigShowCommandTest.php"
sed -i '75a \    protected function createApplication()\n    {\n        $app = require __DIR__."/../../../bootstrap/app.php";\n        $app->make(\\Illuminate\\Contracts\\Console\\Kernel::class)->bootstrap();\n        return $app;\n    }\n' tests/Testing/Console/ConfigShowCommandTest.php && sed -i '76,82d' tests/Testing/Console/ConfigShowCommandTest.php
vendor/bin/phpunit tests/Testing/Console/ConfigShowCommandTest.php
open "tests/Testing/Console/ConfigShowCommandTest.php"
sed -i '75a \    protected function createApplication()\n    {\n        $app = require __DIR__."/../../../bootstrap/app.php";\n        $app->make(\\Illuminate\\Contracts\\Console\\Kernel::class)->bootstrap();\n        return $app;\n    }\n' tests/Testing/Console/ConfigShowCommandTest.php && sed -i '76,82d' tests/Testing/Console/ConfigShowCommandTest.php
vendor/bin/phpunit tests/Testing/Console/ConfigShowCommandTest.php
open "tests/Testing/Console/ConfigShowCommandTest.php"

