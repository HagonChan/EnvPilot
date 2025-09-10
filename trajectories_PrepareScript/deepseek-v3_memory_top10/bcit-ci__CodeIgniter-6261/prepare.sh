ls -la
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
apt-get update && apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-sqlite3 php-pgsql php-mysql
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --no-progress --prefer-dist --optimize-autoloader
./vendor/bin/phpunit
ls -la tests
./vendor/bin/phpunit -c tests/phpunit.xml
