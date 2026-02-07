ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
php -v
composer --version
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer --version
composer install
composer install --no-dev
phpunit --version
./vendor/bin/phpunit
composer install
composer global require phpunit/phpunit
apt-get install -y zip unzip
composer global require phpunit/phpunit
phpunit --version
find /root/.composer -name phpunit
export PATH=$PATH:/root/.composer/vendor/bin
phpunit --version
phpunit
composer install
./vendor/bin/phpunit
php -d memory_limit=512M ./vendor/bin/phpunit
