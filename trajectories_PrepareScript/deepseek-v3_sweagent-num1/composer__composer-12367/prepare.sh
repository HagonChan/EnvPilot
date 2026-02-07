ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
composer install --ansi --no-interaction --no-progress --prefer-dist
curl -sS https://getcomposer.org/installer | php
apt-get update && apt-get install -y curl php-cli
curl -sS https://getcomposer.org/installer | php
php composer.phar install --ansi --no-interaction --no-progress --prefer-dist
apt-get install -y php8.1-xml
php composer.phar install --ansi --no-interaction --no-progress --prefer-dist
apt-get install -y zip unzip
php composer.phar install --ansi --no-interaction --no-progress --prefer-dist --no-scripts --ignore-platform-req=ext-zip
php composer.phar test
php composer.phar config process-timeout 600 && php composer.phar test
apt-get install -y php8.1-mbstring
php composer.phar test --ignore-platform-req=ext-mbstring
php vendor/bin/simple-phpunit
rm -rf vendor/bin/.phpunit/phpunit-9.6-0 && php vendor/bin/simple-phpunit
rm -rf vendor/bin/.phpunit/phpunit-9.6-0 && php vendor/bin/simple-phpunit
php vendor/phpunit/phpunit/phpunit
find vendor -name phpunit
php vendor/bin/.phpunit/phpunit-9.6-0/vendor/phpunit/phpunit
phpunit
php vendor/bin/.phpunit/phpunit-9.6-0/vendor/phpunit/phpunit tests/Composer/Test/TestCase.php
