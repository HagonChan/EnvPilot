ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php php-xml php-mbstring php-curl php-zip
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit 'public function close()' 'public function close(): void'
edit 'public function close()' 'public function close(): void'
insert 'public function close(): void
    {
    }' 46
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit 'public function close()' 'public function close(): void'
insert 'public function close(): void
    {
    }' 41
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit '    public function close()
    {
    }' ''
vendor/bin/phpunit
