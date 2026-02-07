ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.3
apt-get install -y php8.2
apt-cache search php | grep -E '^php[0-9]'
apt-get install -y php8.1 php8.1-cli php8.1-xml php8.1-mbstring php8.1-curl php8.1-zip php8.1-xdebug
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
open "composer.json"
composer install
./vendor/bin/phpunit
./vendor/bin/phpunit --verbose
export XDEBUG_MODE=coverage && ./vendor/bin/phpunit --verbose
./vendor/bin/phpunit --verbose --log-junit test-results.xml
open "test-results.xml"
./vendor/bin/phpunit --verbose 2>&1 | tee test-output.log
open "test-output.log"
./vendor/bin/phpunit --verbose > test-output-full.log 2>&1
open "test-output-full.log"
open "tests/Mocks/SlowPokeStream.php"
edit 'public function close()
    {
    }' 'public function close(): void
    {
    }'
ls -la tests/Mocks/SlowPokeStream.php
chmod +w tests/Mocks/SlowPokeStream.php
edit 'public function close()
    {
    }' 'public function close(): void
    {
    }'
sed -i 's/public function close()/public function close(): void/' tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
./vendor/bin/phpunit --verbose > test-output-full.log 2>&1
open "test-output-full.log"
open "tests/Mocks/SlowPokeStream.php"
edit 'public function getSize()
    {
        return null;
    }' 'public function getSize(): ?int
    {
        return null;
    }'
sed -i 's/public function getSize()/public function getSize(): ?int/' tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit 'public function tell()
    {
        throw new Exception('"'"'not implemented'"'"');
    }' 'public function tell(): int
    {
        throw new Exception('"'"'not implemented'"'"');
    }'
sed -i 's/public function tell()/public function tell(): int/' tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
edit 'public function eof()
    {
        return $this->amountToRead === 0;
    }' 'public function eof(): bool
    {
        return $this->amountToRead === 0;
    }'
sed -i 's/public function eof()/public function eof(): bool/' tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
sed -i 's/public function isSeekable()/public function isSeekable(): bool/' tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
./vendor/bin/phpunit --verbose > test-output-full.log 2>&1
open "test-output-full.log"
open "tests/Mocks/SmallChunksStream.php"
sed -i 's/public function close()/public function close(): void/' tests/Mocks/SmallChunksStream.php
./vendor/bin/phpunit
sed -i 's/public function getSize()/public function getSize(): ?int/' tests/Mocks/SmallChunksStream.php

