ls -la
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
open "readme.rst"
ls -la tests
open "tests/phpunit.xml"
open "tests/README.md"
php -v
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-mysql php7.4-pgsql php7.4-sqlite3 php7.4-xml php7.4-mbstring
apt-get update && apt-get install -y php8.0 php8.0-cli php8.0-mysql php8.0-pgsql php8.0-sqlite3 php8.0-xml php8.0-mbstring
apt-cache search php | grep -i '^php[0-9]'
apt-get update && apt-get install -y php8.1 php8.1-cli php8.1-mysql php8.1-pgsql php8.1-sqlite3 php8.1-xml php8.1-mbstring
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.1-zip unzip
composer install
./vendor/bin/phpunit
./vendor/bin/phpunit tests
open "tests/phpunit.xml"
ls -la tests/codeigniter
ls -la tests/codeigniter/core
./vendor/bin/phpunit -c tests/phpunit.xml
