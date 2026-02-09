ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php php-xml php-mbstring php-curl php-zip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
composer install
vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit 'public function close()
    {' 'public function close(): void
    {'
edit 'public function close()
    {' 'public function close(): void
    {'
ls -la tests/Mocks/SlowPokeStream.php
