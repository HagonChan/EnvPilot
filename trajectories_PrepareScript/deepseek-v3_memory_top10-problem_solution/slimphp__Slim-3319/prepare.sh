ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php7.4 php7.4-xdebug
php -v
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php7.4 php7.4-xdebug
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php7.4-xml
php -m | grep -E 'simplexml|dom'
php --ini
php -m
composer install
apt-get install -y php7.4-mbstring
php -m | grep mbstring
apt-get install -y php8.0 php8.0-xdebug php8.0-mbstring php8.0-xml
php -v
php -m | grep -E 'mbstring|xml'
composer install
apt-get install -y zip unzip
composer install
vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit 'public function close()
    {
    }' 'public function close(): void
    {
    }'
ls -la tests/Mocks/SmallChunksStream.php
chmod 644 tests/Mocks/SmallChunksStream.php
edit 'public function close()
    {
    }' 'public function close(): void
    {
    }'
sed -i 's/public function close()/public function close(): void/' tests/Mocks/SmallChunksStream.php
open "tests/Mocks/SmallChunksStream.php"
vendor/bin/phpunit
export XDEBUG_MODE=coverage && vendor/bin/phpunit
vendor/bin/phpunit --testdox
open "tests/AppTest.php"
ls -la tests/Mocks
open "tests/Mocks/MockStream.php"
search_file 'public function write' tests/Mocks/MockStream.php
search_file 'Invoke sequential process after adding another route argument' tests/AppTest.php
search_file 'write(' tests/AppTest.php
goto 1142
open "tests/AppTest.php"
goto 1142
edit '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
        });' '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
            return strlen($args[0]);
        });'

