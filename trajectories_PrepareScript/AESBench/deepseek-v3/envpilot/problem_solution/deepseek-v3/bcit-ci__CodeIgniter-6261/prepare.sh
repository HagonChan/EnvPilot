ls -la
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
scroll_down
apt-get update
apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-imagick php-sqlite3 php-pgsql php-mysql
php -v
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --no-progress --prefer-dist --optimize-autoloader
vendor/bin/phpunit
ls -la phpunit.xml*
ls -la tests
open "tests/phpunit.xml"
vendor/bin/phpunit -c tests/phpunit.xml
