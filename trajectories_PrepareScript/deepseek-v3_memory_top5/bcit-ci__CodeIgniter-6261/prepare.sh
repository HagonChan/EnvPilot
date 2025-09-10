ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
apt-get update && apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-imagick sqlite3 php-sqlite3 php-pgsql php-mysql php-pdo php-pdo-mysql php-pdo-pgsql php-pdo-sqlite
php -v
composer --version
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
composer --version
composer install --no-progress --prefer-dist --optimize-autoloader
phpunit --version
ls -la vendor/bin
./vendor/bin/phpunit
ls -la tests
open "tests/phpunit.xml"
./vendor/bin/phpunit -c tests/phpunit.xml
