ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
open "readme.rst"
apt-get update
apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-sqlite3 php-pgsql php-mysql
composer install --no-progress --prefer-dist --optimize-autoloader
apt-get install -y composer
composer install --no-progress --prefer-dist --optimize-autoloader
./vendor/bin/phpunit
ls -la
ls -la tests
open "tests/phpunit.xml"
./vendor/bin/phpunit -c tests/phpunit.xml
