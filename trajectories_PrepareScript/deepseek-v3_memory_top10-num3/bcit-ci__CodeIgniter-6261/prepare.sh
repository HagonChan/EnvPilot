ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
apt-get update
apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-sqlite3 php-pgsql php-mysql
php -v
curl -sS https://getcomposer.org/installer | php
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php
php composer.phar install --no-progress --prefer-dist --optimize-autoloader
php vendor/bin/phpunit
ls -la tests
open "tests/phpunit.xml"
php vendor/bin/phpunit -c tests/phpunit.xml
