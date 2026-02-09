ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
open "readme.rst"
apt-get update && apt-get install -y php8.1 php8.1-pdo php8.1-mysql php8.1-pgsql php8.1-sqlite3 php8.1-mbstring php8.1-xml php8.1-zip php8.1-gd php8.1-curl php8.1-json
apt-get install -y php8.1 php8.1-pdo php8.1-mysql php8.1-pgsql php8.1-sqlite3 php8.1-mbstring php8.1-xml php8.1-zip php8.1-gd php8.1-curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --no-progress --prefer-dist --optimize-autoloader
./vendor/bin/phpunit
ls -la tests
./vendor/bin/phpunit -c tests/phpunit.xml
